import React, { useEffect, useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const ScheduleFollowUp = () => {
  const [leads, setLeads] = useState([]);
  const [selectedEmail, setSelectedEmail] = useState("");
  const [scheduledAt, setScheduledAt] = useState("");
  const [status, setStatus] = useState("Pending");
  const [error, setError] = useState("");
  const navigate = useNavigate();

  useEffect(() => {
    axios
      .get("http://127.0.0.1:8000/api/leads", {
        headers: { Authorization: `Bearer ${localStorage.getItem("token")}` },
      })
      .then((response) => setLeads(response.data))
      .catch((error) => {
        console.error("Error fetching leads:", error);
        setError("Error fetching leads");
      });
  }, []);

  const handleSubmit = (e) => {
    e.preventDefault();
    const today = new Date().toISOString().split("T")[0];
    if (scheduledAt < today) {
      setError("Scheduled date must be in the future.");
      return;
    }
    const selectedLead = leads.find((lead) => lead.email === selectedEmail);
    if (!selectedLead) {
      setError("Please select a valid lead.");
      return;
    }
    const followUpData = {
      lead_id: selectedLead.id,
      scheduled_at: `${scheduledAt} 00:00:00`,
      status,
    };

    axios
      .post("http://127.0.0.1:8000/api/followups", followUpData, {
        headers: { Authorization: `Bearer ${localStorage.getItem("token")}` },
      })
      .then(() => navigate("/followups"))
      .catch((error) => {
        console.error("Error creating follow-up:", error);
        setError("Error creating follow-up");
      });
  };

  return (
    <div className="d-flex justify-content-center align-items-center vh-100 bg-light">
      <div className="card shadow-lg p-4" style={{ width: '500px', maxWidth: '90%' }}>
        <h3 className="text-center mb-4">Schedule Follow-Up</h3>
        {error && <div className="alert alert-danger">{error}</div>}
        <form onSubmit={handleSubmit}>
          <div className="mb-3">
            <label htmlFor="email" className="form-label">Select Lead (Email)</label>
            <select
              id="email"
              className="form-select"
              value={selectedEmail}
              onChange={(e) => setSelectedEmail(e.target.value)}
              required
            >
              <option value="">Select a lead</option>
              {leads.map((lead) => (
                <option key={lead.id} value={lead.email}>
                  {lead.email}
                </option>
              ))}
            </select>
          </div>
          <div className="mb-3">
            <label htmlFor="scheduled_at" className="form-label">Scheduled At</label>
            <input
              type="date"
              id="scheduled_at"
              className="form-control"
              value={scheduledAt}
              onChange={(e) => setScheduledAt(e.target.value)}
              required
            />
          </div>
          <div className="mb-3">
            <label htmlFor="status" className="form-label">Status</label>
            <select
              id="status"
              className="form-select"
              value={status}
              onChange={(e) => setStatus(e.target.value)}
              required
            >
              <option value="Pending">Pending</option>
              <option value="Completed">Completed</option>
              <option value="Missed">Missed</option>
            </select>
          </div>
          <div className="text-center">
            <button type="submit" className="btn btn-primary">Schedule Follow-Up</button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default ScheduleFollowUp;
