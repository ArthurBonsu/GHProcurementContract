// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ComplianceMonitor {
    
    // Events to notify about compliance issues
    event ComplianceUnmet(
        string issueType,
        string details,
        address reportedBy,
        uint256 timestamp
    );

    // Struct to store compliance issues
    struct ComplianceIssue {
        string issueType;
        string details;
        address reportedBy;
        uint256 timestamp;
    }
    
    // Mapping to store issues reported by contracts
    mapping(uint256 => ComplianceIssue) public complianceIssues;
    uint256 public issueCount;

    constructor() {
        issueCount = 0;
    }

    // Function to report Information Asymmetry
    function reportInformationAsymmetry(string memory details) public {
        issueCount += 1;
        complianceIssues[issueCount] = ComplianceIssue(
            "Information Asymmetry",
            details,
            msg.sender,
            block.timestamp
        );
        emit ComplianceUnmet("Information Asymmetry", details, msg.sender, block.timestamp);
    }

    // Function to report Delayed Audits
    function reportDelayedAudits(string memory details) public {
        issueCount += 1;
        complianceIssues[issueCount] = ComplianceIssue(
            "Delayed Audits",
            details,
            msg.sender,
            block.timestamp
        );
        emit ComplianceUnmet("Delayed Audits", details, msg.sender, block.timestamp);
    }

    // Function to report Regulatory Non-Compliance
    function reportRegulatoryNonCompliance(string memory details) public {
        issueCount += 1;
        complianceIssues[issueCount] = ComplianceIssue(
            "Regulatory Non-Compliance",
            details,
            msg.sender,
            block.timestamp
        );
        emit ComplianceUnmet("Regulatory Non-Compliance", details, msg.sender, block.timestamp);
    }

    // Function to report Abuse of Discretionary Powers
    function reportAbuseOfDiscretionaryPowers(string memory details) public {
        issueCount += 1;
        complianceIssues[issueCount] = ComplianceIssue(
            "Abuse of Discretionary Powers",
            details,
            msg.sender,
            block.timestamp
        );
        emit ComplianceUnmet("Abuse of Discretionary Powers", details, msg.sender, block.timestamp);
    }

    // Function to report Corruption in Tender Evaluation
    function reportCorruptionInTenderEvaluation(string memory details) public {
        issueCount += 1;
        complianceIssues[issueCount] = ComplianceIssue(
            "Corruption in Tender Evaluation",
            details,
            msg.sender,
            block.timestamp
        );
        emit ComplianceUnmet("Corruption in Tender Evaluation", details, msg.sender, block.timestamp);
    }

    // Function to report Improper Payments
    function reportImproperPayments(string memory details) public {
        issueCount += 1;
        complianceIssues[issueCount] = ComplianceIssue(
            "Improper Payments",
            details,
            msg.sender,
            block.timestamp
        );
        emit ComplianceUnmet("Improper Payments", details, msg.sender, block.timestamp);
    }

    // Function to report Tax Evasion and Non-Compliance
    function reportTaxEvasionAndNonCompliance(string memory details) public {
        issueCount += 1;
        complianceIssues[issueCount] = ComplianceIssue(
            "Tax Evasion and Non-Compliance",
            details,
            msg.sender,
            block.timestamp
        );
        emit ComplianceUnmet("Tax Evasion and Non-Compliance", details, msg.sender, block.timestamp);
    }

    // Function to retrieve details of a specific compliance issue by ID
    function getComplianceIssue(uint256 issueId) public view returns (ComplianceIssue memory) {
        require(issueId > 0 && issueId <= issueCount, "Invalid issue ID");
        return complianceIssues[issueId];
    }
}
