import React, { useEffect, useState } from "react";
import axios from "axios";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

const LeadList = () => {
  const [leads, setLeads] = useState([]);

  useEffect(() => {
    axios
      .get("http://127.0.0.1:8000/api/leads", {
        headers: { Authorization: `Bearer ${localStorage.getItem("token")}` },
      })
      .then((response) => setLeads(response.data))
      .catch((error) => {
        console.error("Error fetching leads:", error);
        toast.error("Failed to fetch leads. Please try again later.");
      });
  }, []);

  return (
    <div>
      <h2 className="text-center mb-4">📋 Leads List</h2>

      <div className="table-responsive">
        <table className="table table-hover table-bordered">
          <thead className="table-dark">
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
            </tr>
          </thead>
          <tbody>
            {leads.length > 0 ? (
              leads.map((lead) => (
                <tr key={lead.id}>
                  <td>{lead.name}</td>
                  <td>{lead.email}</td>
                  <td>{lead.phone}</td>
                </tr>
              ))
            ) : (
              <tr>
                <td colSpan="3" className="text-center">
                  No leads available
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      <ToastContainer />
    </div>
  );
};

export default LeadList;
