import React, { useState } from "react";
import { Routes, Route, BrowserRouter as Router, Navigate } from "react-router-dom";
import LeadList from "./components/LeadList";
import CreateLead from "./components/CreateLead";
import FollowUpList from "./components/FollowUpList";
import ScheduleFollowUp from "./components/ScheduleFollowUp";
import Login from "./components/Login";
import Register from "./components/Register";
import PrivateRoute from "./components/PrivateRoute";

import "bootstrap/dist/css/bootstrap.min.css"; // Bootstrap styles
import "./App.css"; // Custom styles

const App = () => {
  const [isSidebarOpen, setIsSidebarOpen] = useState(false);

  return (
    <Router>
      {/* Toggle Button for Smaller Screens */}
      <button
        className="toggle-btn btn btn-dark d-md-none"
        onClick={() => setIsSidebarOpen(!isSidebarOpen)}
      >
        ☰
      </button>

      <div className={`sidebar ${isSidebarOpen ? "open" : ""}`}>
        <h2 className="text-warning text-center mt-3">Dashboard</h2>
        <nav className="nav flex-column mt-4">
          <a href="/leads" className="nav-link text-light">📋 Leads</a>
          <a href="/create-lead" className="nav-link text-light">➕ Create Lead</a>
          <a href="/followups" className="nav-link text-light">📝 Follow-Up List</a>
          <a href="/schedule-followup" className="nav-link text-light">📅 Schedule Follow-Up</a>
          <a
            href="/login"
            className="nav-link text-danger"
            onClick={() => localStorage.removeItem("token")}
          >
            🚪 Logout
          </a>
        </nav>
      </div>

      {/* Main Content */}
      <main className="main-content">
        <Routes>
          <Route path="/login" element={<Login />} />
          <Route path="/register" element={<Register />} />
          <Route path="/leads" element={<PrivateRoute><LeadList /></PrivateRoute>} />
          <Route path="/create-lead" element={<PrivateRoute><CreateLead /></PrivateRoute>} />
          <Route path="/followups" element={<PrivateRoute><FollowUpList leadId={1} /></PrivateRoute>} />
          <Route path="/schedule-followup" element={<PrivateRoute><ScheduleFollowUp /></PrivateRoute>} />
          <Route path="/" element={<Navigate to="/leads" />} />
        </Routes>
      </main>
    </Router>
  );
};

export default App;
