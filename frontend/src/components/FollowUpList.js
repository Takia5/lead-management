import React, { useState, useEffect } from "react";
import axios from "axios";

const FollowUpList = () => {
  const [followUps, setFollowUps] = useState([]);
  const [expandedLead, setExpandedLead] = useState(null);
  const [statusOptions, setStatusOptions] = useState([]);
  const [userRole, setUserRole] = useState(null); // For RBAC

  useEffect(() => {
    // Fetch follow-ups and user role
    const fetchFollowUps = async () => {
      try {
        const response = await axios.get("http://127.0.0.1:8000/api/followups/list", {
          headers: { Authorization: `Bearer ${localStorage.getItem("token")}` }
        });
        setFollowUps(response.data);
      } catch (error) {
        console.error("Error fetching follow-ups", error);
      }
    };

    const fetchUserRole = async () => {
      try {
        const response = await axios.get("http://127.0.0.1:8000/api/user", {
          headers: { Authorization: `Bearer ${localStorage.getItem("token")}` }
        });
        setUserRole(response.data.role);
      } catch (error) {
        console.error("Error fetching user role", error);
      }
    };

    const fetchStatusOptions = async () => {
        try {
          const response = await axios.get(
            "http://127.0.0.1:8000/api/followups/status-options", 
            {
              headers: {
                Authorization: `Bearer ${localStorage.getItem("token")}`
              }
            }
          );
          console.log("Status Options in Dropdown:", response.data);
          setStatusOptions(response.data.status_options); //Extracting the options 
        } catch (error) {
          console.error("Error fetching status options", error);
        }
      };
      

    fetchFollowUps();
    fetchUserRole();
    fetchStatusOptions();
  }, []);

  const handleToggleExpand = (leadId) => {
    setExpandedLead(expandedLead === leadId ? null : leadId);
  };

  const handleStatusChange = async (followUpId, newStatus) => {
    // Update the status in the UI first
    setFollowUps((prevFollowUps) =>
      prevFollowUps.map((followUp) =>
        followUp.id === followUpId ? { ...followUp, status: newStatus } : followUp
      )
    );
  
    try {
      // Request to update the status in the backend
      await axios.put(
        `http://127.0.0.1:8000/api/followups/${followUpId}/status`,
        { status: newStatus },
        { headers: { Authorization: `Bearer ${localStorage.getItem("token")}` } }
      );
      // If successful, no further action needed
    } catch (error) {
      console.error("Error updating follow-up status", error);
      // In case of error, revert the change
      setFollowUps((prevFollowUps) =>
        prevFollowUps.map((followUp) =>
          followUp.id === followUpId ? { ...followUp, status: followUp.status } : followUp
        )
      );
    }
  };
  

  // Group follow-ups by lead
  const groupedFollowUps = followUps.reduce((acc, followUp) => {
    if (!acc[followUp.lead?.id]) {
      acc[followUp.lead?.id] = [];
    }
    acc[followUp.lead?.id]?.push(followUp);
    return acc;
  }, {});

  return (
    <div className="container my-4">
      <h3 className="text-center mb-4">Follow Up List</h3>
      <div className="table-responsive">
        <table className="table table-striped table-bordered">
          <thead className="table-dark">
            <tr>
              <th>Lead Name</th>
              <th>Lead Email</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            {Object.keys(groupedFollowUps).map((leadId) => {
              const leadFollowUps = groupedFollowUps[leadId];
              const lead = leadFollowUps[0]?.lead;
              if (!lead) return null;

              return (
                <React.Fragment key={leadId}>
                  <tr onClick={() => handleToggleExpand(leadId)} style={{ cursor: 'pointer' }}>
                    <td>{lead.name}</td>
                    <td>{lead.email}</td>
                    <td>
                      {expandedLead === leadId ? "Hide Follow-ups" : "Show Follow-ups"}
                    </td>
                  </tr>
                  {expandedLead === leadId && (
                    <tr>
                      <td colSpan="3">
                        <table className="table table-bordered mt-3">
                          <thead>
                            <tr>
                              <th>Scheduled At</th>
                              <th>Status</th>
                              <th>Created At</th>
                              <th>Updated At</th>
                              {userRole === "Admin" || userRole === "Sales Manager" ? <th>Update Status</th> : null}
                            </tr>
                          </thead>
                          <tbody>
                            {leadFollowUps.map((followUp) => (
                              <tr key={followUp.id}>
                                <td>{new Date(followUp.scheduled_at).toLocaleString()}</td>
                                <td>{followUp.status}</td>
                                <td>{new Date(followUp.created_at).toLocaleString()}</td>
                                <td>{new Date(followUp.updated_at).toLocaleString()}</td>
                                {userRole === "Admin" || userRole === "Sales Manager" ? (
                                  <td>
                                    <select
  value={followUp.status}
  onChange={(e) => handleStatusChange(followUp.id, e.target.value)}
  className="form-select"
>
  {statusOptions.map((option) => (
    <option key={option} value={option}>
      {option}
    </option>
  ))}
</select>

                                  </td>
                                ) : null}
                              </tr>
                            ))}
                          </tbody>
                        </table>
                      </td>
                    </tr>
                  )}
                </React.Fragment>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default FollowUpList;
