# Active Directory Hybrid Identity (On-Prem + Azure AD)

##  Overview
This project demonstrates an **enterprise-style hybrid identity environment** where an on-premises Active Directory is integrated with **Azure Active Directory (Entra ID)**.

The goal is to simulate how organizations manage identities across on-prem and cloud environments using **Azure AD Connect**.

## N.B: This is a **lab project for learning and demonstration purposes**.



## Architecture
- On-premises Windows Server (Active Directory Domain Services)
- Azure Active Directory (Entra ID)
- Azure AD Connect for identity synchronization
- Secure one-way synchronization (on-prem → cloud)



## Technologies Used
- Windows Server
- Active Directory Domain Services (AD DS)
- Azure Active Directory (Entra ID)
- Azure AD Connect
- PowerShell
- Microsoft Azure



##  How the Lab Works
1. A Windows Server VM simulates an on-premises environment.
2. Active Directory Domain Services is installed and configured.
3. Users and OUs are created in on-prem AD.
4. Azure AD Connect synchronizes identities to Azure AD.
5. Users become available for cloud authentication.


## Learning Outcomes
- Understanding hybrid identity architecture
- Hands-on experience with Active Directory and Azure AD
- Identity synchronization concepts
- Enterprise documentation practices
- Basic PowerShell automation


##  Certification Alignment
- AZ-104: Microsoft Azure Administrator
- SC-300: Identity and Access Administrator



