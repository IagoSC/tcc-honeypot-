--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _addresses; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._addresses (
    "UserId" smallint,
    id smallint,
    "fullName" character varying(16) DEFAULT NULL::character varying,
    "mobileNum" bigint,
    "zipCode" character varying(6) DEFAULT NULL::character varying,
    "streetAddress" character varying(18) DEFAULT NULL::character varying,
    city character varying(12) DEFAULT NULL::character varying,
    state character varying(18) DEFAULT NULL::character varying,
    country character varying(28) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._addresses OWNER TO juiceshop;

--
-- Name: _basketitems; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._basketitems (
    "ProductId" smallint,
    "BasketId" smallint,
    id smallint,
    quantity smallint,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._basketitems OWNER TO juiceshop;

--
-- Name: _baskets; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._baskets (
    id smallint,
    coupon character varying(1) DEFAULT NULL::character varying,
    "UserId" smallint,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._baskets OWNER TO juiceshop;

--
-- Name: _captchas; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._captchas (
    id character varying(1) DEFAULT NULL::character varying,
    "captchaId" character varying(1) DEFAULT NULL::character varying,
    captcha character varying(1) DEFAULT NULL::character varying,
    answer character varying(1) DEFAULT NULL::character varying,
    "createdAt" character varying(1) DEFAULT NULL::character varying,
    "updatedAt" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._captchas OWNER TO juiceshop;

--
-- Name: _cards; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._cards (
    "UserId" smallint,
    id smallint,
    "fullName" character varying(16) DEFAULT NULL::character varying,
    "cardNum" bigint,
    "expMonth" smallint,
    "expYear" smallint,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._cards OWNER TO juiceshop;

--
-- Name: _challenges; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._challenges (
    id smallint,
    key character varying(41) DEFAULT NULL::character varying,
    name character varying(26) DEFAULT NULL::character varying,
    category character varying(26) DEFAULT NULL::character varying,
    tags character varying(53) DEFAULT NULL::character varying,
    description character varying(473) DEFAULT NULL::character varying,
    difficulty smallint,
    "mitigationUrl" character varying(102) DEFAULT NULL::character varying,
    solved smallint,
    "disabledEnv" character varying(1) DEFAULT NULL::character varying,
    "tutorialOrder" character varying(2) DEFAULT NULL::character varying,
    "codingChallengeStatus" smallint,
    "hasCodingChallenge" smallint,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._challenges OWNER TO juiceshop;

--
-- Name: _complaints; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._complaints (
    "UserId" smallint,
    id smallint,
    message character varying(67) DEFAULT NULL::character varying,
    file character varying(1) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._complaints OWNER TO juiceshop;

--
-- Name: _deliveries; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._deliveries (
    id smallint,
    name character varying(17) DEFAULT NULL::character varying,
    price numeric(3,2) DEFAULT NULL::numeric,
    "deluxePrice" numeric(2,1) DEFAULT NULL::numeric,
    eta numeric(2,1) DEFAULT NULL::numeric,
    icon character varying(20) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._deliveries OWNER TO juiceshop;

--
-- Name: _feedbacks; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._feedbacks (
    "UserId" character varying(2) DEFAULT NULL::character varying,
    id smallint,
    comment character varying(180) DEFAULT NULL::character varying,
    rating smallint,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._feedbacks OWNER TO juiceshop;

--
-- Name: _hints; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._hints (
    "ChallengeId" smallint,
    id smallint,
    text character varying(296) DEFAULT NULL::character varying,
    "order" smallint,
    unlocked smallint,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._hints OWNER TO juiceshop;

--
-- Name: _imagecaptchas; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._imagecaptchas (
    id character varying(1) DEFAULT NULL::character varying,
    image character varying(1) DEFAULT NULL::character varying,
    answer character varying(1) DEFAULT NULL::character varying,
    "UserId" character varying(1) DEFAULT NULL::character varying,
    "createdAt" character varying(1) DEFAULT NULL::character varying,
    "updatedAt" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._imagecaptchas OWNER TO juiceshop;

--
-- Name: _memories; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._memories (
    "UserId" smallint,
    id smallint,
    caption character varying(52) DEFAULT NULL::character varying,
    "imagePath" character varying(99) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._memories OWNER TO juiceshop;

--
-- Name: _privacyrequests; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._privacyrequests (
    id character varying(1) DEFAULT NULL::character varying,
    "UserId" character varying(1) DEFAULT NULL::character varying,
    "deletionRequested" character varying(1) DEFAULT NULL::character varying,
    "createdAt" character varying(1) DEFAULT NULL::character varying,
    "updatedAt" character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._privacyrequests OWNER TO juiceshop;

--
-- Name: _products; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._products (
    id smallint,
    name character varying(65) DEFAULT NULL::character varying,
    description character varying(652) DEFAULT NULL::character varying,
    price character varying(7) DEFAULT NULL::character varying,
    "deluxePrice" character varying(7) DEFAULT NULL::character varying,
    image character varying(21) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying,
    "deletedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._products OWNER TO juiceshop;

--
-- Name: _quantities; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._quantities (
    "ProductId" smallint,
    id smallint,
    quantity smallint,
    "limitPerUser" character varying(1) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._quantities OWNER TO juiceshop;

--
-- Name: _recycles; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._recycles (
    "UserId" smallint,
    "AddressId" smallint,
    id smallint,
    quantity smallint,
    "isPickup" smallint,
    date character varying(10) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._recycles OWNER TO juiceshop;

--
-- Name: _securityanswers; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._securityanswers (
    "UserId" smallint,
    "SecurityQuestionId" smallint,
    id smallint,
    answer character varying(64) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._securityanswers OWNER TO juiceshop;

--
-- Name: _securityquestions; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._securityquestions (
    id smallint,
    question character varying(69) DEFAULT NULL::character varying,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._securityquestions OWNER TO juiceshop;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._sqlite_sequence (
    name character varying(17) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO juiceshop;

--
-- Name: _users; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._users (
    id smallint,
    username character varying(10) DEFAULT NULL::character varying,
    email character varying(26) DEFAULT NULL::character varying,
    password character varying(32) DEFAULT NULL::character varying,
    role character varying(10) DEFAULT NULL::character varying,
    "deluxeToken" character varying(64) DEFAULT NULL::character varying,
    "lastLoginIp" character varying(11) DEFAULT NULL::character varying,
    "profileImage" character varying(45) DEFAULT NULL::character varying,
    "totpSecret" character varying(32) DEFAULT NULL::character varying,
    "isActive" smallint,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying,
    "deletedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._users OWNER TO juiceshop;

--
-- Name: _wallets; Type: TABLE; Schema: public; Owner: juiceshop
--

CREATE TABLE public._wallets (
    "UserId" smallint,
    id smallint,
    balance smallint,
    "createdAt" character varying(10) DEFAULT NULL::character varying,
    "updatedAt" character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._wallets OWNER TO juiceshop;

--
-- Data for Name: _addresses; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._addresses ("UserId", id, "fullName", "mobileNum", "zipCode", "streetAddress", city, state, country, "createdAt", "updatedAt") FROM stdin;
4	1	Bjoern Kimminich	622032705	25436	Am Lokalhorst 42	Uetersen	Schleswig-Holstein	Germany	2025-11-12	2025-11-12
17	2	Tim Tester	622032704	12345	Dummystreet 42	Mocktown	Testilvania	United Fakedom	2025-11-12	2025-11-12
1	3	Administrator	1234567890	4711	0815 Test Street	Test	Test	Test	2025-11-12	2025-11-12
2	4	Jim	523423432	1701	Room 3F 121	Deck 5	USS Enterprise	Space	2025-11-12	2025-11-12
2	5	Sam	1000000783	GSK783	Deneva Colony	Deneva	Beta Darius System	United Federation of Planets	2025-11-12	2025-11-12
3	6	Bender	797675345	10001	Robot Arms Apts 42	New New York	New New York	Planet Earth	2025-11-12	2025-11-12
\.


--
-- Data for Name: _basketitems; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._basketitems ("ProductId", "BasketId", id, quantity, "createdAt", "updatedAt") FROM stdin;
1	1	1	2	2025-11-12	2025-11-12
2	1	2	3	2025-11-12	2025-11-12
3	1	3	1	2025-11-12	2025-11-12
4	2	4	2	2025-11-12	2025-11-12
4	3	5	1	2025-11-12	2025-11-12
4	4	6	2	2025-11-12	2025-11-12
3	5	7	5	2025-11-12	2025-11-12
4	5	8	2	2025-11-12	2025-11-12
\.


--
-- Data for Name: _baskets; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._baskets (id, coupon, "UserId", "createdAt", "updatedAt") FROM stdin;
1		1	2025-11-12	2025-11-12
2		2	2025-11-12	2025-11-12
3		3	2025-11-12	2025-11-12
4		11	2025-11-12	2025-11-12
5		16	2025-11-12	2025-11-12
\.


--
-- Data for Name: _captchas; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._captchas (id, "captchaId", captcha, answer, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: _cards; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._cards ("UserId", id, "fullName", "cardNum", "expMonth", "expYear", "createdAt", "updatedAt") FROM stdin;
4	1	Bjoern Kimminich	1805880162	12	2092	2025-11-12	2025-11-12
17	2	Tim Tester	937946958	12	2099	2025-11-12	2025-11-12
1	3	Administrator	-1711193536	2	2081	2025-11-12	2025-11-12
1	4	Administrator	706418156	4	2086	2025-11-12	2025-11-12
2	5	Jim	-1213704399	11	2099	2025-11-12	2025-11-12
3	6	Bender	431181504	2	2081	2025-11-12	2025-11-12
\.


--
-- Data for Name: _challenges; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._challenges (id, key, name, category, tags, description, difficulty, "mitigationUrl", solved, "disabledEnv", "tutorialOrder", "codingChallengeStatus", "hasCodingChallenge", "createdAt", "updatedAt") FROM stdin;
1	restfulXssChallenge	API-only XSS	XSS	Danger Zone,With Coding Challenge	Perform a <i>persisted</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code> without using the frontend application at all.	3	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
2	accessLogDisclosureChallenge	Access Log	Sensitive Data Exposure	With Coding Challenge	Gain access to any access log file of the server.	4	https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
3	registerAdminChallenge	Admin Registration	Improper Input Validation	With Coding Challenge	Register as a user with administrator privileges.	3	https://cheatsheetseries.owasp.org/cheatsheets/Mass_Assignment_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
4	adminSectionChallenge	Admin Section	Broken Access Control	Good for Demos,With Coding Challenge	Access the administration section of the store.	2	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	0		8	0	1	2025-11-12	2025-11-12
5	fileWriteChallenge	Arbitrary File Write	Vulnerable Components	Danger Zone,Prerequisite	Overwrite the <a href="/ftp/legal.md">Legal Information</a> file.	6	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerable_Dependency_Management_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
6	resetPasswordBjoernOwaspChallenge	Bjoern's Favorite Pet	Broken Authentication	OSINT,With Coding Challenge	Reset the password of Bjoern's OWASP account via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	3	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
7	tokenSaleChallenge	Blockchain Hype	Security through Obscurity	Contraption,Code Analysis,Web3,With Coding Challenge	Learn about the Token Sale before its official announcement.	5		0			0	1	2025-11-12	2025-11-12
8	nftUnlockChallenge	NFT Takeover	Sensitive Data Exposure	Contraption,Good for Demos,Web3,With Coding Challenge	Take over the wallet containing our official Soul Bound Token (NFT).	2		0			0	1	2025-11-12	2025-11-12
9	nftMintChallenge	Mint the Honey Pot	Improper Input Validation	Web3,Internet Traffic,With Coding Challenge	Mint the Honey Pot NFT by gathering BEEs from the bee haven.	3		0			0	1	2025-11-12	2025-11-12
10	web3WalletChallenge	Wallet Depletion	Miscellaneous	Web3,Internet Traffic,With Coding Challenge	Withdraw more ETH from the new wallet than you deposited.	6		0			0	1	2025-11-12	2025-11-12
11	web3SandboxChallenge	Web3 Sandbox	Broken Access Control	Web3,With Coding Challenge	Find an accidentally deployed code sandbox for writing smart contracts on the fly.	1		0			0	1	2025-11-12	2025-11-12
12	rceChallenge	Blocked RCE DoS	Insecure Deserialization	Danger Zone	Perform a Remote Code Execution that would keep a less hardened application busy <em>forever</em>.	5	https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
13	captchaBypassChallenge	CAPTCHA Bypass	Broken Anti Automation	Brute Force	Submit 10 or more customer feedbacks within 20 seconds.	3		0			0	0	2025-11-12	2025-11-12
14	changePasswordBenderChallenge	Change Bender's Password	Broken Authentication		Change Bender's password into <i>slurmCl4ssic</i> without using SQL Injection or Forgot Password.	5	https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
15	christmasSpecialChallenge	Christmas Special	Injection		Order the Christmas special offer of 2014.	4	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
16	usernameXssChallenge	CSP Bypass	XSS	Danger Zone	Bypass the Content Security Policy and perform an XSS attack with <code>&lt;script&gt;alert(`xss`)&lt;/script&gt;</code> on a legacy page within the application.	4	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
17	persistedXssUserChallenge	Client-side XSS Protection	XSS	Danger Zone	Perform a <i>persisted</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code> bypassing a <i>client-side</i> security mechanism.	3	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
18	directoryListingChallenge	Confidential Document	Sensitive Data Exposure	Good for Demos,With Coding Challenge	Access a confidential document.	1		0			0	1	2025-11-12	2025-11-12
19	localXssChallenge	DOM XSS	XSS	Tutorial,Good for Demos,With Coding Challenge	Perform a <i>DOM</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code>.	1	https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html	0		2	0	1	2025-11-12	2025-11-12
20	dbSchemaChallenge	Database Schema	Injection	With Coding Challenge	Exfiltrate the entire DB schema definition via SQL Injection.	3	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
21	deprecatedInterfaceChallenge	Deprecated Interface	Security Misconfiguration	Contraption,Prerequisite	Use a deprecated B2B interface that was not properly shut down.	2	https://cheatsheetseries.owasp.org/cheatsheets/Web_Service_Security_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
22	easterEggLevelOneChallenge	Easter Egg	Broken Access Control	Shenanigans,Contraption,Good for Demos	Find the hidden <a href="https://en.wikipedia.org/wiki/Easter_egg_(media)" target="_blank">easter egg</a>.	4		0			0	0	2025-11-12	2025-11-12
23	emailLeakChallenge	Email Leak	Sensitive Data Exposure		Perform an unwanted information disclosure by accessing data cross-domain.	5	https://cheatsheetseries.owasp.org/cheatsheets/XS_Leaks_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
24	emptyUserRegistration	Empty User Registration	Improper Input Validation		Register a user with an empty email and password.	2	https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
25	ephemeralAccountantChallenge	Ephemeral Accountant	Injection		Log in with the (non-existing) accountant <i>acc0unt4nt@juice-sh.op</i> without ever registering that user.	4	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
26	errorHandlingChallenge	Error Handling	Security Misconfiguration	Prerequisite	Provoke an error that is neither very gracefully nor consistently handled.	1	https://cheatsheetseries.owasp.org/cheatsheets/Error_Handling_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
27	manipulateClockChallenge	Expired Coupon	Improper Input Validation		Successfully redeem an expired campaign coupon code.	4		0			0	0	2025-11-12	2025-11-12
28	extraLanguageChallenge	Extra Language	Broken Anti Automation	Brute Force	First you should find out how the languages are technically changed in the user interface.	5		0			0	0	2025-11-12	2025-11-12
29	feedbackChallenge	Five-Star Feedback	Broken Access Control		Get rid of all 5-star customer feedback.	2	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
30	forgedCouponChallenge	Forged Coupon	Cryptographic Issues	Good for Demos,Code Analysis	Forge a coupon code that gives you a discount of at least 80%.	6	https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
31	forgedFeedbackChallenge	Forged Feedback	Broken Access Control	Tutorial	Post some feedback in another user's name.	3	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	0		11	0	0	2025-11-12	2025-11-12
32	forgedReviewChallenge	Forged Review	Broken Access Control	With Coding Challenge	Post a product review as another user or edit any user's existing review.	3	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
33	jwtForgedChallenge	Forged Signed JWT	Vulnerable Components		Forge an almost properly RSA-signed JWT token that impersonates the (non-existing) user <i>rsa_lord@juice-sh.op</i>.	6	https://cheatsheetseries.owasp.org/cheatsheets/JSON_Web_Token_for_Java_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
34	forgottenDevBackupChallenge	Forgotten Developer Backup	Sensitive Data Exposure	Contraption,Good for Demos,Prerequisite	Access a developer's forgotten backup file.	4		0			0	0	2025-11-12	2025-11-12
35	forgottenBackupChallenge	Forgotten Sales Backup	Sensitive Data Exposure	Contraption	Access a salesman's forgotten backup file.	4		0			0	0	2025-11-12	2025-11-12
36	typosquattingAngularChallenge	Frontend Typosquatting	Vulnerable Components		<a href="/#/contact">Inform the shop</a> about a <i>typosquatting</i> imposter that dug itself deep into the frontend. (Mention the exact name of the culprit)	5	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerable_Dependency_Management_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
37	ghostLoginChallenge	GDPR Data Erasure	Broken Authentication		Log in with Chris' erased user account.	3	https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
38	dataExportChallenge	GDPR Data Theft	Sensitive Data Exposure		Steal someone else's personal data without using Injection.	4	https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
39	httpHeaderXssChallenge	HTTP-Header XSS	XSS	Danger Zone	Perform a <i>persisted</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code> through an HTTP header.	4	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
40	continueCodeChallenge	Imaginary Challenge	Cryptographic Issues	Shenanigans,Code Analysis	Solve challenge #999. Unfortunately, this challenge does not exist.	6	https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
41	dlpPasswordSprayingChallenge	Leaked Access Logs	Sensitive Data Exposure	OSINT	Dumpster dive the Internet for a leaked password and log in to the original user account it belongs to. (Creating a new account with the same password does not qualify as a solution.)	5	https://cheatsheetseries.owasp.org/cheatsheets/Credential_Stuffing_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
42	dlpPastebinDataLeakChallenge	Leaked Unsafe Product	Sensitive Data Exposure	Shenanigans,OSINT	Identify an unsafe product that was removed from the shop and <a href="/#/contact">inform the shop</a> which ingredients are dangerous.	4		0			0	0	2025-11-12	2025-11-12
43	typosquattingNpmChallenge	Legacy Typosquatting	Vulnerable Components		<a href="/#/contact">Inform the shop</a> about a <i>typosquatting</i> trick it has been a victim of at least in <code>v6.2.0-SNAPSHOT</code>. (Mention the exact name of the culprit)	4	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerable_Dependency_Management_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
44	loginAdminChallenge	Login Admin	Injection	Tutorial,Good for Demos,With Coding Challenge	Log in with the administrator's user account.	2	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	0		7	0	1	2025-11-12	2025-11-12
45	loginAmyChallenge	Login Amy	Sensitive Data Exposure	OSINT	Log in with Amy's original user credentials. (This could take 93.83 billion trillion trillion centuries to brute force, but luckily she did not read the "One Important Final Note")	3		0			0	0	2025-11-12	2025-11-12
46	loginBenderChallenge	Login Bender	Injection	Tutorial,With Coding Challenge	Log in with Bender's user account.	3	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	0		13	0	1	2025-11-12	2025-11-12
47	oauthUserPasswordChallenge	Login Bjoern	Broken Authentication	Code Analysis	Log in with Bjoern's Gmail account <i>without</i> previously changing his password, applying SQL Injection, or hacking his Google account.	4	https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
48	loginJimChallenge	Login Jim	Injection	Tutorial,With Coding Challenge	Log in with Jim's user account.	3	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	0		12	0	1	2025-11-12	2025-11-12
49	loginRapperChallenge	Login MC SafeSearch	Sensitive Data Exposure	Shenanigans,OSINT	Log in with MC SafeSearch's original user credentials without applying SQL Injection or any other bypass.	2		0			0	0	2025-11-12	2025-11-12
50	loginSupportChallenge	Login Support Team	Security Misconfiguration	Brute Force,Code Analysis	Log in with the support team's original user credentials without applying SQL Injection or any other bypass.	6	https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
51	basketManipulateChallenge	Manipulate Basket	Broken Access Control		Put an additional product into another user's shopping basket.	3	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
52	misplacedSignatureFileChallenge	Misplaced Signature File	Sensitive Data Exposure	Good Practice,Contraption	Access a misplaced <a href="https://github.com/Neo23x0/sigma">SIEM signature</a> file.	4	https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
53	timingAttackChallenge	Multiple Likes	Broken Anti Automation		Like any review at least three times as the same user.	6		0			0	0	2025-11-12	2025-11-12
54	easterEggLevelTwoChallenge	Nested Easter Egg	Cryptographic Issues	Shenanigans,Good for Demos	Apply some advanced cryptanalysis to find <i>the real</i> easter egg.	4		0			0	0	2025-11-12	2025-11-12
55	noSqlCommandChallenge	NoSQL DoS	Injection	Danger Zone	Let the server sleep for some time. (It has done more than enough hard work for you)	4	https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
56	noSqlOrdersChallenge	NoSQL Exfiltration	Injection	Danger Zone	All your orders are belong to us! Even the ones which don't.	5	https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
57	noSqlReviewsChallenge	NoSQL Manipulation	Injection	With Coding Challenge	Update multiple product reviews at the same time.	4	https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
58	redirectCryptoCurrencyChallenge	Outdated Allowlist	Unvalidated Redirects	Code Analysis,With Coding Challenge	Let us redirect you to one of our crypto currency addresses which are not promoted any longer.	1	https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
59	weakPasswordChallenge	Password Strength	Broken Authentication	Brute Force,Tutorial,With Coding Challenge	Log in with the administrator's user credentials without previously changing them or applying SQL Injection.	2	https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html	0		9	0	1	2025-11-12	2025-11-12
60	negativeOrderChallenge	Payback Time	Improper Input Validation		Place an order that makes you rich.	3	https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
61	premiumPaywallChallenge	Premium Paywall	Cryptographic Issues	Shenanigans	<i class="far fa-gem"></i><i class="far fa-gem"></i><i class="far fa-gem"></i><i class="far fa-gem"></i><i class="far fa-gem"></i><!--IvLuRfBJYlmStf9XfL6ckJFngyd9LfV1JaaN/KRTPQPidTuJ7FR+D/nkWJUF+0xUF07CeCeqYfxq+OJVVa0gNbqgYkUNvn//UbE7e95C+6e+7GtdpqJ8mqm4WcPvUGIUxmGLTTAC2+G9UuFCD1DUjg==--> <a href="https://blockchain.info/address/1AbKfgvw9psQ41NbLi8kufDQTezwG8DRZm" target="_blank"><i class="fab fa-btc fa-sm"></i> Unlock Premium Challenge</a> to access exclusive content.	6	https://cheatsheetseries.owasp.org/cheatsheets/Key_Management_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
62	privacyPolicyChallenge	Privacy Policy	Miscellaneous	Good Practice,Tutorial,Good for Demos	Read our privacy policy.	1		0		4	0	0	2025-11-12	2025-11-12
63	privacyPolicyProofChallenge	Privacy Policy Inspection	Security through Obscurity	Shenanigans,Good for Demos	Prove that you actually read our privacy policy.	3		0			0	0	2025-11-12	2025-11-12
64	changeProductChallenge	Product Tampering	Broken Access Control	With Coding Challenge	Change the <code>href</code> of the link within the <a href="/#/search?q=OWASP SSL Advanced Forensic Tool (O-Saft)">OWASP SSL Advanced Forensic Tool (O-Saft)</a> product description into <i>https://owasp.slack.com</i>.	3	https://cheatsheetseries.owasp.org/cheatsheets/REST_Security_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
65	reflectedXssChallenge	Reflected XSS	XSS	Tutorial,Danger Zone,Good for Demos	Perform a <i>reflected</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code>.	2	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	0		5	0	0	2025-11-12	2025-11-12
66	passwordRepeatChallenge	Repetitive Registration	Improper Input Validation		Follow the DRY principle while registering a user.	1	https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
67	resetPasswordBenderChallenge	Reset Bender's Password	Broken Authentication	OSINT,With Coding Challenge	Reset Bender's password via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	4	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
68	resetPasswordBjoernChallenge	Reset Bjoern's Password	Broken Authentication	OSINT,With Coding Challenge	Reset the password of Bjoern's internal account via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	5	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
69	resetPasswordJimChallenge	Reset Jim's Password	Broken Authentication	OSINT,With Coding Challenge	Reset Jim's password via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	3	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
70	resetPasswordMortyChallenge	Reset Morty's Password	Broken Anti Automation	OSINT,Brute Force,With Coding Challenge	Reset Morty's password via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>his obfuscated answer</i> to his security question.	5	https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
71	retrieveBlueprintChallenge	Retrieve Blueprint	Sensitive Data Exposure		Deprive the shop of earnings by downloading the blueprint for one of its products.	5		0			0	0	2025-11-12	2025-11-12
72	ssrfChallenge	SSRF	Broken Access Control	Code Analysis	Request a hidden resource on server through server.	6	https://cheatsheetseries.owasp.org/cheatsheets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
73	sstiChallenge	SSTi	Injection	Contraption,Danger Zone,Code Analysis	Infect the server with juicy malware by abusing arbitrary command execution.	6		0			0	0	2025-11-12	2025-11-12
74	scoreBoardChallenge	Score Board	Miscellaneous	Tutorial,Code Analysis,With Coding Challenge	Find the carefully hidden 'Score Board' page.	1		0		1	0	1	2025-11-12	2025-11-12
75	securityPolicyChallenge	Security Policy	Miscellaneous	Good Practice	Behave like any "white-hat" should before getting into the action.	2	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerability_Disclosure_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
76	persistedXssFeedbackChallenge	Server-side XSS Protection	XSS	Danger Zone	Perform a <i>persisted</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code> bypassing a <i>server-side</i> security mechanism.	4	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
77	hiddenImageChallenge	Steganography	Security through Obscurity	Shenanigans	<a href="/#/contact">Rat out</a> a notorious character hiding in plain sight in the shop. (Mention the exact name of the character)	4		0			0	0	2025-11-12	2025-11-12
78	rceOccupyChallenge	Successful RCE DoS	Insecure Deserialization	Danger Zone	Perform a Remote Code Execution that occupies the server for a while without using infinite loops.	6	https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
79	supplyChainAttackChallenge	Supply Chain Attack	Vulnerable Components	OSINT	<a href="/#/contact">Inform the development team</a> about a danger to some of <em>their</em> credentials. (Send them the URL of the <em>original report</em> or an assigned CVE or another identifier of this vulnerability)	5		0			0	0	2025-11-12	2025-11-12
80	twoFactorAuthUnsafeSecretStorageChallenge	Two Factor Authentication	Broken Authentication		Solve the 2FA challenge for user "wurstbrot". (Disabling, bypassing or overwriting his 2FA settings does not count as a solution)	5	https://cheatsheetseries.owasp.org/cheatsheets/Multifactor_Authentication_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
81	jwtUnsignedChallenge	Unsigned JWT	Vulnerable Components		Forge an essentially unsigned JWT token that impersonates the (non-existing) user <i>jwtn3d@juice-sh.op</i>.	5	https://cheatsheetseries.owasp.org/cheatsheets/JSON_Web_Token_for_Java_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
82	uploadSizeChallenge	Upload Size	Improper Input Validation		Upload a file larger than 100 kB.	3	https://cheatsheetseries.owasp.org/cheatsheets/File_Upload_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
83	uploadTypeChallenge	Upload Type	Improper Input Validation		Upload a file that has no .pdf or .zip extension.	3	https://cheatsheetseries.owasp.org/cheatsheets/File_Upload_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
84	unionSqlInjectionChallenge	User Credentials	Injection	With Coding Challenge	Retrieve a list of all user credentials via SQL Injection.	4	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
85	videoXssChallenge	Video XSS	XSS	Danger Zone	Embed an XSS payload <code>&lt;/script&gt;&lt;script&gt;alert(`xss`)&lt;/script&gt;</code> into our promo video.	6	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
86	basketAccessChallenge	View Basket	Broken Access Control	Tutorial,Good for Demos	View another user's shopping basket.	2	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	0		10	0	0	2025-11-12	2025-11-12
87	knownVulnerableComponentChallenge	Vulnerable Library	Vulnerable Components	OSINT	<a href="/#/contact">Inform the shop</a> about a vulnerable library it is using. (Mention the exact library name and version in your comment)	4	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerability_Disclosure_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
88	weirdCryptoChallenge	Weird Crypto	Cryptographic Issues		<a href="/#/contact">Inform the shop</a> about an algorithm or library it should definitely not use the way it does.	2	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerability_Disclosure_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
89	redirectChallenge	Allowlist Bypass	Unvalidated Redirects	Prerequisite,With Coding Challenge	Enforce a redirect to a page you are not supposed to redirect to.	4	https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
90	xxeFileDisclosureChallenge	XXE Data Access	XXE	Danger Zone	Retrieve the content of <code>C:\\Windows\\system.ini</code> or <code>/etc/passwd</code> from the server.	3	https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
91	xxeDosChallenge	XXE DoS	XXE	Danger Zone	Give the server something to chew on for quite a while.	5	https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
92	yamlBombChallenge	Memory Bomb	Insecure Deserialization	Danger Zone	Drop some explosive data into a vulnerable file-handling endpoint.	5	https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
93	zeroStarsChallenge	Zero Stars	Improper Input Validation		Give a devastating zero-star feedback to the store.	1		0			0	0	2025-11-12	2025-11-12
94	missingEncodingChallenge	Missing Encoding	Improper Input Validation	Shenanigans	Retrieve the photo of Bjoern's cat in "melee combat-mode".	1		0			0	0	2025-11-12	2025-11-12
95	svgInjectionChallenge	Cross-Site Imaging	Security Misconfiguration	Contraption	Stick <a href="https://cataas.com/cat" target="_blank">cute cross-domain kittens</a> all over our delivery boxes.	5		0			0	0	2025-11-12	2025-11-12
96	exposedMetricsChallenge	Exposed Metrics	Sensitive Data Exposure	Good Practice,With Coding Challenge	Find the endpoint that serves usage data to be scraped by a <a href="https://github.com/prometheus/prometheus">popular monitoring system</a>.	1		0			0	1	2025-11-12	2025-11-12
97	freeDeluxeChallenge	Deluxe Fraud	Improper Input Validation		Obtain a Deluxe Membership without paying for it.	3		0			0	0	2025-11-12	2025-11-12
98	csrfChallenge	CSRF	Broken Access Control		Change the name of a user by performing Cross-Site Request Forgery from <a href="http://htmledit.squarefree.com">another origin</a>.	3	https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
99	xssBonusChallenge	Bonus Payload	XSS	Shenanigans,Tutorial,With Coding Challenge	Use the bonus payload <code>&lt;iframe width=&quot;100%&quot; height=&quot;166&quot; scrolling=&quot;no&quot; frameborder=&quot;no&quot; allow=&quot;autoplay&quot; src=&quot;https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/771984076&amp;color=%23ff5500&amp;auto_play=true&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true&quot;&gt;&lt;/iframe&gt;</code> in the <i>DOM XSS</i> challenge.	1	https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html	0		3	0	1	2025-11-12	2025-11-12
100	resetPasswordUvoginChallenge	Reset Uvogin's Password	Sensitive Data Exposure	OSINT,With Coding Challenge	Reset Uvogin's password via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	4	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	0			0	1	2025-11-12	2025-11-12
101	geoStalkingMetaChallenge	Meta Geo Stalking	Sensitive Data Exposure	OSINT	Determine the answer to John's security question by looking at an upload of him to the Photo Wall and use it to reset his password via the <a href="/#/forgot-password">Forgot Password</a> mechanism.	2	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
102	geoStalkingVisualChallenge	Visual Geo Stalking	Sensitive Data Exposure	OSINT	Determine the answer to Emma's security question by looking at an upload of her to the Photo Wall and use it to reset her password via the <a href="/#/forgot-password">Forgot Password</a> mechanism.	2	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
103	killChatbotChallenge	Kill Chatbot	Vulnerable Components	Code Analysis	Permanently disable the support chatbot so that it can no longer answer customer queries.	5	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerable_Dependency_Management_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
104	nullByteChallenge	Poison Null Byte	Improper Input Validation	Prerequisite	Bypass a security control with a <a href="https://hakipedia.com/index.php/Poison_Null_Byte">Poison Null Byte</a> to access a file not meant for your eyes.	4		0			0	0	2025-11-12	2025-11-12
105	bullyChatbotChallenge	Bully Chatbot	Miscellaneous	Shenanigans,Brute Force	Receive a coupon code from the support chatbot.	1		0			0	0	2025-11-12	2025-11-12
106	lfrChallenge	Local File Read	Vulnerable Components	OSINT,Danger Zone	Gain read access to an arbitrary local file on the web server.	5		0			0	0	2025-11-12	2025-11-12
107	closeNotificationsChallenge	Mass Dispel	Miscellaneous		Close multiple "Challenge solved"-notifications in one go.	1		0			0	0	2025-11-12	2025-11-12
108	csafChallenge	Security Advisory	Miscellaneous		The Juice Shop is susceptible to a known vulnerability in a library, for which an advisory has already been issued, marking the Juice Shop as <i>known affected</i>. A fix is still pending. <a href="/#/contact">Inform the shop</a> about a suitable checksum as proof that you did your due diligence.	3		0			0	0	2025-11-12	2025-11-12
109	exposedCredentialsChallenge	Exposed credentials	Sensitive Data Exposure		A developer was careless with hardcoding unused, but still valid credentials for a testing account on the client-side.	2	https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html	0		6	0	0	2025-11-12	2025-11-12
110	leakedApiKeyChallenge	Leaked API Key	Sensitive Data Exposure		<a href="/#/contact">Inform the shop</a> about a leaked API key. (Mention the exact key in your comment)	5	https://cheatsheetseries.owasp.org/cheatsheets/Secrets_Management_Cheat_Sheet.html	0			0	0	2025-11-12	2025-11-12
\.


--
-- Data for Name: _complaints; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._complaints ("UserId", id, message, file, "createdAt", "updatedAt") FROM stdin;
3	1	I'll build my own eCommerce business! With Black Jack! And Hookers!		2025-11-12	2025-11-12
\.


--
-- Data for Name: _deliveries; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._deliveries (id, name, price, "deluxePrice", eta, icon, "createdAt", "updatedAt") FROM stdin;
1	One Day Delivery	0.99	0.5	1.0	fas fa-rocket	2025-11-12	2025-11-12
2	Fast Delivery	0.50	0.0	3.0	fas fa-shipping-fast	2025-11-12	2025-11-12
3	Standard Delivery	0.00	0.0	5.0	fas fa-truck	2025-11-12	2025-11-12
\.


--
-- Data for Name: _feedbacks; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._feedbacks ("UserId", id, comment, rating, "createdAt", "updatedAt") FROM stdin;
1	1	I love this shop! Best products in town! Highly recommended! (***in@juice-sh.op)	5	2025-11-12	2025-11-12
2	2	Great shop! Awesome service! (***@juice-sh.op)	4	2025-11-12	2025-11-12
3	3	Nothing useful available here! (***der@juice-sh.op)	1	2025-11-12	2025-11-12
21	4	Please send me the juicy chatbot NFT in my wallet at /juicy-nft : "purpose betray marriage blame crunch monitor spin slide donate sport lift clutch" (***ereum@juice-sh.op)	1	2025-11-12	2025-11-12
	5	Incompetent customer support! Can't even upload photo of broken purchase!<br /><em>Support Team: Sorry, only order confirmation PDFs can be attached to complaints!</em> (anonymous)	2	2025-11-12	2025-11-12
	6	This is <b>the</b> store for awesome stuff of all kinds! (anonymous)	4	2025-11-12	2025-11-12
	7	Never gonna buy anywhere else from now on! Thanks for the great service! (anonymous)	4	2025-11-12	2025-11-12
	8	Keep up the good work! (anonymous)	3	2025-11-12	2025-11-12
\.


--
-- Data for Name: _hints; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._hints ("ChallengeId", id, text, "order", unlocked, "createdAt", "updatedAt") FROM stdin;
1	1	You need to work with the server-side API directly. Try different HTTP verbs on different entities exposed through the API.	1	0	2025-11-12	2025-11-12
1	2	A matrix of known data entities and their supported HTTP verbs through the API can help you here.	2	0	2025-11-12	2025-11-12
1	3	Careless developers might have exposed API methods that the client does not even need.	3	0	2025-11-12	2025-11-12
2	4	Who would want a server access log to be accessible through a web application?	1	0	2025-11-12	2025-11-12
2	5	Normally, server log files are written to disk on server side and are not accessible from the outside.	2	0	2025-11-12	2025-11-12
2	6	Which raises the question: Who would want a server access log to be accessible through a web application?	3	0	2025-11-12	2025-11-12
2	7	One particular file found in the folder you might already have found during the "Access a confidential document" challenge might give you an idea who is interested in such a public exposure.	4	0	2025-11-12	2025-11-12
2	8	Drilling down one level into the file system might not be sufficient.	5	0	2025-11-12	2025-11-12
3	9	You have to assign the unassignable.	1	0	2025-11-12	2025-11-12
3	10	Register as an ordinary user to learn what API endpoints are involved in this use case.	2	0	2025-11-12	2025-11-12
3	11	Think of the simplest possible implementations of a distinction between regular users and administrators.	3	0	2025-11-12	2025-11-12
4	12	It is just slightly harder to find than the score board link.	1	0	2025-11-12	2025-11-12
4	13	Knowing it exists, you can simply guess what URL the admin section might have.	2	0	2025-11-12	2025-11-12
4	14	Alternatively, you can try to find a reference or clue within the parts of the application that are not usually visible in the browser.	3	0	2025-11-12	2025-11-12
4	15	It is probably just slightly harder to find and gain access to than the score board link.	4	0	2025-11-12	2025-11-12
4	16	There is some access control in place, but there are at least three ways to bypass it.	5	0	2025-11-12	2025-11-12
5	17	Look out for a tweet praising new functionality of the web shop. Then find a third party vulnerability associated with it.	1	0	2025-11-12	2025-11-12
5	18	Find all places in the application where file uploads are possible.	2	0	2025-11-12	2025-11-12
5	19	For at least one of these, the Juice Shop is depending on a library that suffers from an arbitrary file overwrite vulnerability.	3	0	2025-11-12	2025-11-12
5	20	You can find a hint toward the underlying vulnerability in the @owasp_juiceshop Twitter timeline.	4	0	2025-11-12	2025-11-12
6	21	Hints to the answer to Bjoern’s question can be found by looking him up on the Internet.	1	0	2025-11-12	2025-11-12
6	22	More precisely, Bjoern might have accidentally (?) doxxed himself by mentioning his security answer on at least one occasion where a camera was running.	2	0	2025-11-12	2025-11-12
6	23	Brute forcing the answer might be very well possible with a sufficiently extensive list of common pet names.	3	0	2025-11-12	2025-11-12
7	24	The developers truly believe in "Security through Obscurity" over actual access restrictions.	1	0	2025-11-12	2025-11-12
7	25	Guessing or brute forcing the URL of the token sale page is very unlikely to succeed.	2	0	2025-11-12	2025-11-12
7	26	You should closely investigate the place where all paths within the application are defined.	3	0	2025-11-12	2025-11-12
7	27	Beating the employed obfuscation mechanism manually will take some time. Maybe there is an easier way to undo it?	4	0	2025-11-12	2025-11-12
8	28	Find the seed phrase posted accidentally.	1	0	2025-11-12	2025-11-12
9	29	Discover NFT wonders among the captivating visual memories.	1	0	2025-11-12	2025-11-12
10	30	Try to exploit the contract of the wallet.	1	0	2025-11-12	2025-11-12
11	31	It is just as easy as finding the Score Board.	1	0	2025-11-12	2025-11-12
12	32	The feature you need to exploit for this challenge is not directly advertised anywhere.	1	0	2025-11-12	2025-11-12
12	33	As the Juice Shop is written in pure Javascript, there is one data format that is most probably used for serialization.	2	0	2025-11-12	2025-11-12
12	34	You should try to make the server busy for all eternity.	3	0	2025-11-12	2025-11-12
12	35	The challenge will be solved if you manage to trigger the protection of the application against a very specific DoS attack vector.	4	0	2025-11-12	2025-11-12
12	36	Similar to the "Let the server sleep for some time" challenge (which accepted nothing but NoSQL Injection as a solution) this challenge will only accept proper RCE as a solution. It cannot be solved by simply hammering the server with requests. That would probably just kill your server instance.	5	0	2025-11-12	2025-11-12
13	37	After finding a CAPTCHA bypass, write a script that automates feedback submission. Or open many browser tabs and be really quick.	1	0	2025-11-12	2025-11-12
13	38	You could prepare 10 browser tabs, solving every CAPTCHA and filling out the each feedback form. Then you’d need to very quickly switch through the tabs and submit the forms in under 20 seconds total.	2	0	2025-11-12	2025-11-12
13	39	Should the Juice Shop ever decide to change the challenge into "Submit 100 or more customer feedbacks within 60 seconds" or worse, you’d probably have a hard time keeping up with any tab-switching approach.	3	0	2025-11-12	2025-11-12
13	40	Investigate closely how the CAPTCHA mechanism works and try to find either a bypass or some automated way of solving it dynamically.	4	0	2025-11-12	2025-11-12
13	41	Wrap this into a script (in whatever programming language you prefer) that repeats this 10 times.	5	0	2025-11-12	2025-11-12
14	42	In previous releases this challenge was wrongly accused of being based on CSRF.	1	0	2025-11-12	2025-11-12
14	43	It might also have been put into the Improper Input Validation category.	2	0	2025-11-12	2025-11-12
14	44	Bender’s current password is so strong that brute force, rainbow table or guessing attacks will probably not work.	3	0	2025-11-12	2025-11-12
15	45	Find out how the application handles unavailable products and try to find a loophole.	1	0	2025-11-12	2025-11-12
15	46	Find out how the application hides deleted products from its customers.	2	0	2025-11-12	2025-11-12
15	47	Try to craft an attack string that makes deleted products visible again.	3	0	2025-11-12	2025-11-12
15	48	You need to get the deleted product into your shopping cart and trigger the Checkout.	4	0	2025-11-12	2025-11-12
15	49	Neither of the above can be achieved through the application frontend and it might even require (half-)Blind SQL Injection.	5	0	2025-11-12	2025-11-12
16	50	What is even "better" than a legacy page with a homegrown RegEx sanitizer? Having CSP injection issues on the exact same page as well!	1	0	2025-11-12	2025-11-12
16	51	Find a screen in the application that looks subtly odd and dated compared with all other screens.	2	0	2025-11-12	2025-11-12
16	52	Before trying any XSS attacks, you should understand how the page is setting its Content Security Policy.	3	0	2025-11-12	2025-11-12
16	53	For the subsequent XSS, make good use of the flaws in the homegrown sanitization based on a RegEx!	4	0	2025-11-12	2025-11-12
17	54	There are only some input fields in the Juice Shop forms that validate their input.	1	0	2025-11-12	2025-11-12
17	55	Even less of these fields are persisted in a way where their content is shown on another screen.	2	0	2025-11-12	2025-11-12
17	56	Bypassing client-side security can typically be done by either disabling it on the client (i.e. in the browser by manipulating the DOM tree) or by ignoring it completely and interacting with the backend instead.	3	0	2025-11-12	2025-11-12
18	57	Analyze and tamper with links in the application that deliver a file directly.	1	0	2025-11-12	2025-11-12
18	58	The file you are looking for is not protected in any way. Once you found it you can also access it.	2	0	2025-11-12	2025-11-12
19	59	Look for an input field where its content appears in the HTML when its form is submitted.	1	0	2025-11-12	2025-11-12
19	60	This challenge is almost indistinguishable from "Perform a reflected XSS attack" if you do not look "under the hood" to find out what the application actually does with the user input.	2	0	2025-11-12	2025-11-12
20	61	Find out where this information could come from. Then craft an attack string against an endpoint that offers an unnecessary way to filter data.	1	0	2025-11-12	2025-11-12
20	62	Find out which database system is in use and where it would usually store its schema definitions.	2	0	2025-11-12	2025-11-12
20	63	Craft a UNION SELECT attack string to join the relevant data from any such identified system table into the original result.	3	0	2025-11-12	2025-11-12
20	64	You might have to tackle some query syntax issues step-by-step, basically hopping from one error to the next.	4	0	2025-11-12	2025-11-12
20	65	As with "Order the Christmas special offer of 2014" this cannot be achieved through the application frontend.	5	0	2025-11-12	2025-11-12
21	66	The developers who disabled the interface think they could go invisible by just closing their eyes.	1	0	2025-11-12	2025-11-12
21	67	The old B2B interface was replaced with a more modern version recently.	2	0	2025-11-12	2025-11-12
21	68	When deprecating the old interface, not all of its parts were cleanly removed from the code base.	3	0	2025-11-12	2025-11-12
21	69	Simply using the deprecated interface suffices to solve this challenge. No attack or exploit is necessary.	4	0	2025-11-12	2025-11-12
22	70	If you solved one of the four file access challenges, you already know where to find the easter egg.	1	0	2025-11-12	2025-11-12
22	71	Simply reuse the trick that already worked for the files above.	2	0	2025-11-12	2025-11-12
23	72	Try to find and attack an endpoint that responds with user information. SQL Injection is not the solution here.	1	0	2025-11-12	2025-11-12
23	73	What ways are there to access data from a web application cross-domain?	2	0	2025-11-12	2025-11-12
23	74	This challenge uses an old way which is no longer recommended.	3	0	2025-11-12	2025-11-12
24	75	Consider intercepting and playing with the request payload.	1	0	2025-11-12	2025-11-12
25	76	Try to create the needed user "out of thin air".	1	0	2025-11-12	2025-11-12
25	77	The user literally needs to be ephemeral as in "lasting for only a short time".	2	0	2025-11-12	2025-11-12
25	78	Registering normally with the user’s email address will then obviously not solve this challenge. The Juice Shop will not even let you register as acc0unt4nt@juice-sh.op, as this would make the challenge unsolvable for you.	3	0	2025-11-12	2025-11-12
25	79	Getting the user into the database some other way will also fail to solve this challenge. In case you somehow managed to do so, you need to restart the Juice Shop application in order to wipe the database and make the challenge solvable again.	4	0	2025-11-12	2025-11-12
25	80	The fact that this challenge is in the Injection category should already give away the intended approach.	5	0	2025-11-12	2025-11-12
26	81	Try to submit bad input to forms. Alternatively tamper with URL paths or parameters.	1	0	2025-11-12	2025-11-12
26	82	This challenge actually triggers from various possible error conditions.	2	0	2025-11-12	2025-11-12
26	83	You can try to submit bad input to forms to provoke an improper error handling.	3	0	2025-11-12	2025-11-12
26	84	Tampering with URL paths or parameters might also trigger an unforeseen error.	4	0	2025-11-12	2025-11-12
27	85	Try to identify past special event or holiday campaigns of the shop first.	1	0	2025-11-12	2025-11-12
27	86	Look for clues about the past campaign or holiday event somewhere in the application.	2	0	2025-11-12	2025-11-12
27	87	Solving this challenge does not require actual time traveling.	3	0	2025-11-12	2025-11-12
28	88	First you should find out how the languages are technically changed in the user interface.	1	0	2025-11-12	2025-11-12
28	89	Guessing will most definitely not work in this challenge.	2	0	2025-11-12	2025-11-12
28	90	Brute force is not the only option for this challenge, but a perfectly viable one.	3	0	2025-11-12	2025-11-12
28	91	Investigate online what languages are actually available.	4	0	2025-11-12	2025-11-12
29	92	Once you found admin section of the application, this challenge is almost trivial.	1	0	2025-11-12	2025-11-12
29	93	Nothing happens when you try to delete feedback entries? Check the JavaScript console for errors!	2	0	2025-11-12	2025-11-12
30	94	Try either a) a knowledgeable brute force attack or b) reverse engineering or c) some research in the cloud.	1	0	2025-11-12	2025-11-12
30	95	One viable solution would be to reverse-engineer how coupon codes are generated and craft your own 80% coupon by using the same (or at least similar) implementation.	2	0	2025-11-12	2025-11-12
30	96	Another possible solution might be harvesting as many previous coupon as possible and look for patterns that might give you a leverage for a brute force attack.	3	0	2025-11-12	2025-11-12
30	97	If all else fails, you could still try to blindly brute force the coupon code field before checkout.	4	0	2025-11-12	2025-11-12
31	98	You can solve this by tampering with the user interface or by intercepting the communication with the RESTful backend.	1	0	2025-11-12	2025-11-12
31	99	To find the client-side leverage point, closely analyze the HTML form used for feedback submission.	2	0	2025-11-12	2025-11-12
31	100	The backend-side leverage point is similar to some of the XSS challenges found in OWASP Juice Shop.	3	0	2025-11-12	2025-11-12
32	101	Observe the flow of product review posting and editing and see if you can exploit it.	1	0	2025-11-12	2025-11-12
32	102	This challenge can be solved by using developers tool of your browser or with tools like postman.	2	0	2025-11-12	2025-11-12
32	103	Analyze the form used for review submission and try to find a leverage point.	3	0	2025-11-12	2025-11-12
32	104	This challenge is pretty similar to "Post some feedback in another user’s name" challenge.	4	0	2025-11-12	2025-11-12
33	105	This challenge is explicitly not about acquiring the RSA private key used for JWT signing.	1	0	2025-11-12	2025-11-12
33	106	The three generic hints from Forge an essentially unsigned JWT token also help with this challenge.	2	0	2025-11-12	2025-11-12
33	107	Instead of enforcing no encryption to be applied, try to apply a more sophisticated exploit against the JWT libraries used in the Juice Shop.	3	0	2025-11-12	2025-11-12
33	108	Getting your hands on the public RSA key the application employs for its JWTs is mandatory for this challenge.	4	0	2025-11-12	2025-11-12
33	109	Finding the corresponding private key should actually be impossible, but that obviously doesn’t make this challenge unsolvable.	5	0	2025-11-12	2025-11-12
33	110	Make sure your JWT is URL safe!	6	0	2025-11-12	2025-11-12
34	111	You need to trick a security mechanism into thinking that the file you want has a valid file type.	1	0	2025-11-12	2025-11-12
34	112	Analyze and tamper with links in the application that deliver a file directly.	2	0	2025-11-12	2025-11-12
34	113	The file is not directly accessible because a security mechanism prevents access to it.	3	0	2025-11-12	2025-11-12
34	114	You need to trick the security mechanism into thinking that the file has a valid file type.	4	0	2025-11-12	2025-11-12
34	115	For this challenge there is only one approach to pull this trick.	5	0	2025-11-12	2025-11-12
35	116	You need to trick a security mechanism into thinking that the file you want has a valid file type.	1	0	2025-11-12	2025-11-12
35	117	Analyze and tamper with links in the application that deliver a file directly.	2	0	2025-11-12	2025-11-12
35	118	The file is not directly accessible because a security mechanism prevents access to it.	3	0	2025-11-12	2025-11-12
35	119	You need to trick the security mechanism into thinking that the file has a valid file type.	4	0	2025-11-12	2025-11-12
36	120	This challenge has nothing to do with mistyping web domains. There is no conveniently misplaced file helping you with this one either. Or is there?	1	0	2025-11-12	2025-11-12
36	121	This challenge has nothing to do with URLs or domains.	2	0	2025-11-12	2025-11-12
36	122	Other than for its legacy companion, combing through the package.json.bak does not help for this challenge.	3	0	2025-11-12	2025-11-12
37	123	Turns out that something is technically and legally wrong with the implementation of the "right to be forgotten" for users.	1	0	2025-11-12	2025-11-12
37	124	Trying out the Request Data Erasure functionality might be interesting, but cannot help you solve this challenge in real time.	2	0	2025-11-12	2025-11-12
37	125	If you have solved the challenge Retrieve a list of all user credentials via SQL Injection you might have already retrieved some information about how the Juice Shop "deletes" users upon their request.	3	0	2025-11-12	2025-11-12
37	126	What the Juice Shop does here is totally incompliant with GDPR. Luckily a 4% fine on a gross income of 0$ is still 0$.	4	0	2025-11-12	2025-11-12
38	127	Trick the regular Data Export to give you more than actually belongs to you.	1	0	2025-11-12	2025-11-12
38	128	You should not try to steal data from a "vanilla" user who never even ordered something at the shop.	2	0	2025-11-12	2025-11-12
38	129	As everything about this data export functionality happens on the server-side, it won’t be possible to just tamper with some HTTP requests to solve this challenge.	3	0	2025-11-12	2025-11-12
38	130	Inspecting various server responses which contain user-specific data might give you a clue about the mistake the developers made.	4	0	2025-11-12	2025-11-12
39	131	Finding a piece of displayed information that could originate from an HTTP header is part of this challenge.	1	0	2025-11-12	2025-11-12
39	132	You might have to look into less common or even proprietary HTTP headers to find the leverage point.	2	0	2025-11-12	2025-11-12
39	133	Adding insult to injury, the HTTP header you need will never be sent by the application on its own.	3	0	2025-11-12	2025-11-12
40	134	You need to trick the hacking progress persistence feature into thinking you solved challenge #999.	1	0	2025-11-12	2025-11-12
40	135	Find out how saving and restoring progress is done behind the scenes.	2	0	2025-11-12	2025-11-12
40	136	Deduce from all available information (e.g. the package.json.bak) how the application encrypts and decrypts your hacking progress.	3	0	2025-11-12	2025-11-12
40	137	Other than the user’s passwords, the hacking progress involves an additional secret during its encryption.	4	0	2025-11-12	2025-11-12
40	138	What would be a really stupid mistake a developer might make when choosing such a secret?	5	0	2025-11-12	2025-11-12
41	139	As the challenge name implies, your task is to find some leaked access logs which happen to have a fairly common format.	1	0	2025-11-12	2025-11-12
41	140	A very popular help platform for developers might contain breadcrumbs towards solving this challenge.	2	0	2025-11-12	2025-11-12
41	141	The actual log file was copied & paste onto a platform often used to share data quickly with externals or even just internal peers.	3	0	2025-11-12	2025-11-12
41	142	Once you found and harvested the important piece of information from the log, you could employ a technique called Password Spraying to solve this challenge.	4	0	2025-11-12	2025-11-12
42	143	Your own SQLi and someone else's Ctrl-V will be your accomplices in this challenge!	1	0	2025-11-12	2025-11-12
42	144	You must first identify the "unsafe product" which ist not available any more in the shop.	2	0	2025-11-12	2025-11-12
42	145	Solving the "Order the Christmas special offer of 2014" challenge might give it to you as by-catch.	3	0	2025-11-12	2025-11-12
42	146	The actual data you need to solve this challenge was leaked on the same platform that was involved in the "Dumpster dive the Internet for a leaked password and log in to the original user account it belongs to" challenge.	4	0	2025-11-12	2025-11-12
42	147	Google is a particularly good accomplice in this challenge.	5	0	2025-11-12	2025-11-12
43	148	This challenge has nothing to do with mistyping web domains. Investigate the forgotten developer's backup file instead.	1	0	2025-11-12	2025-11-12
43	149	Investigating the forgotten developer’s backup file might bring some insight.	2	0	2025-11-12	2025-11-12
43	150	"Malicious packages in npm" is a worthwhile read on Ivan Akulov’s blog.	3	0	2025-11-12	2025-11-12
44	151	The challenge description probably gave away what form you should attack.	1	0	2025-11-12	2025-11-12
44	152	If you happen to know the email address of the admin already, you can launch a targeted attack.	2	0	2025-11-12	2025-11-12
44	153	You might be lucky with a dedicated attack pattern even if you have no clue about the admin email address.	3	0	2025-11-12	2025-11-12
44	154	If you harvested the admin’s password hash, you can of course try to attack that instead of using SQL Injection.	4	0	2025-11-12	2025-11-12
44	155	Alternatively you can solve this challenge as a combo with the Log in with the administrator’s user credentials without previously changing them or applying SQL Injection challenge.	5	0	2025-11-12	2025-11-12
45	156	This challenge will make you go after a needle in a haystack.	1	0	2025-11-12	2025-11-12
45	157	As with so many other characters from Futurama this challenge is of course about logging in as Amy from that show.	2	0	2025-11-12	2025-11-12
45	158	Did you know that Amy is married to an alien named Kif?	3	0	2025-11-12	2025-11-12
45	159	The challenge description contains a few sentences which give away some information how Amy decided to strengthen her password.	4	0	2025-11-12	2025-11-12
45	160	Obviously, Amy - being a little dimwitted - did not put nearly enough effort and creativity into the password selection process.	5	0	2025-11-12	2025-11-12
46	161	The challenge description probably gave away what form you should attack.	1	0	2025-11-12	2025-11-12
46	162	You need to know (or smart-guess) Bender’s email address so you can launch a targeted attack.	2	0	2025-11-12	2025-11-12
46	163	Bender's password hash might not help you very much.	3	0	2025-11-12	2025-11-12
46	164	In case you try some other approach than SQL Injection, you will notice that Bender’s password hash is not very useful.	4	0	2025-11-12	2025-11-12
47	165	The security flaw behind this challenge is 100% OWASP Juice Shop's fault and 0% Google's.	1	0	2025-11-12	2025-11-12
47	166	One way to light up this challenge in green on the score board, is to be Bjoern Kimminich. In that case, just log in with your Google account to automatically solve this challenge! Congratulations!	2	0	2025-11-12	2025-11-12
47	167	Most likely you are not Bjoern Kimminich, so instead you might want to take detailed look into how the OAuth login with Google is implemented.	3	0	2025-11-12	2025-11-12
47	168	It could bring you some insight to register with your own Google account and analyze closely what happens behind the scenes.	4	0	2025-11-12	2025-11-12
48	169	The challenge description probably gave away what form you should attack.	1	0	2025-11-12	2025-11-12
48	170	You need to know (or smart-guess) Jim’s email address so you can launch a targeted attack.	2	0	2025-11-12	2025-11-12
48	171	If you harvested Jim’s password hash, you can try to attack that instead of using SQL Injection.	3	0	2025-11-12	2025-11-12
49	172	MC SafeSearch is a rapper who produced the song "Protect Ya' Passwordz" which explains password & sensitive data protection very nicely.	1	0	2025-11-12	2025-11-12
49	173	After watching the music video of this song, you should agree that even ⭐⭐ is a slightly exaggerated difficulty rating for this challenge.	2	0	2025-11-12	2025-11-12
50	174	The underlying flaw of this challenge is a lot more human error than technical weakness.	1	0	2025-11-12	2025-11-12
50	175	The support team is located in a low-cost country and the team structure fluctuates a lot due to people leaving for jobs with even just slightly better wages.	2	0	2025-11-12	2025-11-12
50	176	To prevent abuse the password for the support team account itself is actually very strong.	3	0	2025-11-12	2025-11-12
50	177	To allow easy access during an incident, the support team utilizes a 3rd party tool which every support engineer can access to get the current account password from.	4	0	2025-11-12	2025-11-12
50	178	While it is also possible to use SQL Injection to log in as the support team, this will not solve the challenge.	5	0	2025-11-12	2025-11-12
51	179	Have an eye on the HTTP traffic while placing products in the shopping basket.	1	0	2025-11-12	2025-11-12
51	180	Adding more instances of the same product to someone else’s basket does not qualify as a solution. The same goes for stealing from someone else’s basket.	2	0	2025-11-12	2025-11-12
51	181	This challenge requires a bit more sophisticated tampering than others of the same ilk.	3	0	2025-11-12	2025-11-12
52	182	You need to trick a security mechanism into thinking that the file you want has a valid file type.	1	0	2025-11-12	2025-11-12
52	183	If you solved one of the other four file access challenges, you already know where the SIEM signature file is located.	2	0	2025-11-12	2025-11-12
52	184	Simply reuse the trick that already worked for the files above.	3	0	2025-11-12	2025-11-12
53	185	Punctuality is the politeness of kings.	1	0	2025-11-12	2025-11-12
53	186	Every user is (almost) immediately associated with the review they "liked" to prevent abuse of that functionality.	2	0	2025-11-12	2025-11-12
53	187	Did you really think clicking the "like" button three times in a row really fast would be enough to solve a ⭐⭐⭐⭐⭐⭐ challenge?	3	0	2025-11-12	2025-11-12
53	188	The underlying flaw of this challenge is a Race Condition.	4	0	2025-11-12	2025-11-12
54	189	You might have to peel through several layers of tough-as-nails encryption for this challenge.	1	0	2025-11-12	2025-11-12
54	190	Make sure you solve Find the hidden easter egg first.	2	0	2025-11-12	2025-11-12
54	191	You might have to peel through several layers of tough-as-nails encryption for this challenge.	3	0	2025-11-12	2025-11-12
55	192	This challenge is essentially a stripped-down Denial of Service (DoS) attack.	1	0	2025-11-12	2025-11-12
55	193	As stated in the Architecture overview, OWASP Juice Shop uses a MongoDB derivate as its NoSQL database.	2	0	2025-11-12	2025-11-12
55	194	The categorization into the NoSQL Injection category totally gives away the expected attack vector for this challenge. Trying any others will not solve the challenge, even if they might yield the same result.	3	0	2025-11-12	2025-11-12
55	195	In particular, flooding the application with requests will not solve this challenge. That would probably just kill your server instance.	4	0	2025-11-12	2025-11-12
56	196	Take a close look on how the $where query operator works in MongoDB.	1	0	2025-11-12	2025-11-12
56	197	This challenge requires a classic Injection attack.	2	0	2025-11-12	2025-11-12
56	198	Find an API endpoint with the intent of delivering a single order to the user and work with that.	3	0	2025-11-12	2025-11-12
56	199	Reading up on how MongoDB queries work is really helpful here.	4	0	2025-11-12	2025-11-12
57	200	Take a close look on how the equivalent of UPDATE-statements in MongoDB work.	1	0	2025-11-12	2025-11-12
57	201	This challenge requires another classic Injection attack.	2	0	2025-11-12	2025-11-12
57	202	It is also worth looking into how Query Operators work in MongoDB.	3	0	2025-11-12	2025-11-12
58	203	When removing references to those addresses from the code the developers have been a bit sloppy.	1	0	2025-11-12	2025-11-12
58	204	More particular, they have been sloppy in a way that even the Angular Compiler was not able to clean up after them automatically.	2	0	2025-11-12	2025-11-12
58	205	It is of course not sufficient to just visit any of the crypto currency links directly to solve the challenge.	3	0	2025-11-12	2025-11-12
59	206	This challenge can be solved with three different approaches.	1	0	2025-11-12	2025-11-12
59	207	Guessing might work just fine.	2	0	2025-11-12	2025-11-12
59	208	If you harvested the admin’s password hash, you can try to attack that.	3	0	2025-11-12	2025-11-12
59	209	In case you use some hacker tool, you can also go for a brute force attack using a generic password list.	4	0	2025-11-12	2025-11-12
60	210	You literally need to make the shop owe you any amount of money.	1	0	2025-11-12	2025-11-12
60	211	Investigate the shopping basket closely to understand how it prevents you from creating orders that would fulfil the challenge.	2	0	2025-11-12	2025-11-12
61	212	You do not have to pay anything to unlock this challenge! Nonetheless, donations are very much appreciated.	1	0	2025-11-12	2025-11-12
61	213	There is no inappropriate, self-written or misconfigured cryptographic library to be exploited here.	2	0	2025-11-12	2025-11-12
61	214	How much protection does a sturdy top-quality door lock add to your house if you put the key under the door mat? Or hide the key in the nearby plant pot? Or tape the key to the underside of the mailbox?	3	0	2025-11-12	2025-11-12
61	215	Once more: You do not have to pay anything to unlock this challenge!	4	0	2025-11-12	2025-11-12
62	216	We won't even ask you to confirm that you did. Just read it. Please. Pretty please.	1	0	2025-11-12	2025-11-12
62	217	When you work with the application you will most likely solve this challenge in the process.	2	0	2025-11-12	2025-11-12
62	218	Any automated crawling or spidering tool you use might solve this challenge for you.	3	0	2025-11-12	2025-11-12
62	219	There is no real hacking involved here.	4	0	2025-11-12	2025-11-12
63	220	Only by visiting a special URL you can confirm that you read it carefully.	1	0	2025-11-12	2025-11-12
63	221	First you should obviously solve the "Read our privacy policy" challenge.	2	0	2025-11-12	2025-11-12
63	222	It is fine to use the mouse cursor to not lose sight of the paragraph you are currently reading.	3	0	2025-11-12	2025-11-12
63	223	If you find some particularly hot sections in the policy you might want to melt them together similar to what you might have already uncovered in Apply some advanced cryptanalysis to find the real easter egg.	4	0	2025-11-12	2025-11-12
64	224	Theoretically there are three possible ways to beat this challenge: a) broken admin functionality, b) holes in RESTful API or c) possibility for SQL Injection.	1	0	2025-11-12	2025-11-12
64	225	In practice two of these three ways should turn out to be dead ends.	2	0	2025-11-12	2025-11-12
65	226	Look for a url parameter where its value appears in the page it is leading to.	1	0	2025-11-12	2025-11-12
65	227	Try probing for XSS vulnerabilities by submitting text wrapped in an HTML tag which is easy to spot on screen, e.g. <h1> or <strike>.	2	0	2025-11-12	2025-11-12
66	228	You can solve this by cleverly interacting with the UI or bypassing it altogether.	1	0	2025-11-12	2025-11-12
66	229	The obvious repetition in the User Registration form is the Repeat Password field.	2	0	2025-11-12	2025-11-12
66	230	Try to register with either an empty or different value in Repeat Password.	3	0	2025-11-12	2025-11-12
66	231	You can solve this challenge by cleverly interacting with the UI or bypassing it altogether.	4	0	2025-11-12	2025-11-12
67	232	If you have no idea who Bender is, please put down this book right now and watch the first episodes of Futurama before you come back.	1	0	2025-11-12	2025-11-12
67	233	Unexpectedly, Bender also chose to answer his chosen question truthfully.	2	0	2025-11-12	2025-11-12
67	234	Hints to the answer to Bender’s question can be found in publicly available information on the Internet.	3	0	2025-11-12	2025-11-12
67	235	If a seemingly correct answer is not accepted, you might just need to try some alternative spelling.	4	0	2025-11-12	2025-11-12
67	236	Brute forcing the answer should be next to impossible.	5	0	2025-11-12	2025-11-12
68	237	Nothing a little bit of Facebook stalking couldn't reveal. Might involve a historical twist.	1	0	2025-11-12	2025-11-12
68	238	Other than with his OWASP account, Bjoern was a bit less careless with his choice of security and answer to his internal account.	2	0	2025-11-12	2025-11-12
68	239	Bjoern chose to answer his chosen question truthfully but tried to make it harder for attackers by applying sort of a historical twist.	3	0	2025-11-12	2025-11-12
68	240	Again, hints to the answer to Bjoern’s question can be found by looking him up on the Internet.	4	0	2025-11-12	2025-11-12
68	241	Brute forcing the answer should be next to impossible.	5	0	2025-11-12	2025-11-12
69	242	The hardest part of this challenge is actually to find out who Jim actually is.	1	0	2025-11-12	2025-11-12
69	243	Jim picked one of the worst security questions and chose to answer it truthfully.	2	0	2025-11-12	2025-11-12
69	244	As Jim is a celebrity, the answer to his question is quite easy to find in publicly available information on the internet.	3	0	2025-11-12	2025-11-12
69	245	Even brute forcing the answer should be possible with the right kind of word list.	4	0	2025-11-12	2025-11-12
70	246	Finding out who Morty actually is, will help to reduce the solution space.	1	0	2025-11-12	2025-11-12
70	247	You can assume that Morty answered his security question truthfully but employed some obfuscation to make it more secure.	2	0	2025-11-12	2025-11-12
70	248	Morty’s answer is less than 10 characters long and does not include any special characters.	3	0	2025-11-12	2025-11-12
70	249	Unfortunately, Forgot your password? is protected by a rate limiting mechanism that prevents brute forcing. You need to beat this somehow.	4	0	2025-11-12	2025-11-12
71	250	Check for products which seem like a natural fit for being based on a blueprint.	1	0	2025-11-12	2025-11-12
71	251	You might want to pay attention to the images of the identified product candidates.	2	0	2025-11-12	2025-11-12
71	252	For your inconvenience the blueprint was not misplaced into the same place like so many others forgotten files covered in this chapter.	3	0	2025-11-12	2025-11-12
72	253	Reverse engineering something bad can make good things happen.	1	0	2025-11-12	2025-11-12
72	254	Using whatever you find inside the malware directly will not do you any good.	2	0	2025-11-12	2025-11-12
72	255	For this to count as an SSRF attack you need to make the Juice Shop server attack itself.	3	0	2025-11-12	2025-11-12
72	256	Do not try to find the source code for the malware on GitHub. Take it apart with classic reverse-engineering techniques instead.	4	0	2025-11-12	2025-11-12
73	257	"SSTi" is a clear indicator that this has nothing to do with anything Angular. Also, make sure to use only our non-malicious malware.	1	0	2025-11-12	2025-11-12
73	258	You can find the juicy malware via a very obvious Google search or by stumbling into a very ill-placed quarantine folder with the necessary URLs in it.	2	0	2025-11-12	2025-11-12
73	259	Making the server download and execute the malware is key to solving this challenge.	3	0	2025-11-12	2025-11-12
73	260	For this challenge you do not have to reverse engineer the malware in any way. That will be required later to solve the "Request a hidden resource on server through server" challenge.	4	0	2025-11-12	2025-11-12
75	261	This challenge asks you to act like an ethical hacker.	1	0	2025-11-12	2025-11-12
75	262	Undoubtedly you want to read our security policy before conducting any research on our application.	2	0	2025-11-12	2025-11-12
75	263	As one of the good guys, would you just start attacking an application without consent of the owner?	3	0	2025-11-12	2025-11-12
75	264	You also might want to read the security policy or any bug bounty program that is in place.	4	0	2025-11-12	2025-11-12
76	265	The "Comment" field in the "Customer Feedback" screen is where you want to put your focus on.	1	0	2025-11-12	2025-11-12
76	266	The Comment field in the Contact Us screen is where you want to put your focus on.	2	0	2025-11-12	2025-11-12
76	267	The attack payload <iframe src="javascript:alert(`xss)">` will not be rejected by any validator but stripped from the comment before persisting it.	3	0	2025-11-12	2025-11-12
76	268	Look for possible dependencies related to input processing in the package.json.bak you harvested earlier.	4	0	2025-11-12	2025-11-12
76	269	If an XSS alert shows up but the challenge does not appear as solved on the Score Board, you might not have managed to put the exact attack string <iframe src="javascript:alert(`xss)">` into the database?	5	0	2025-11-12	2025-11-12
77	270	There is not the slightest chance that you can spot the hidden character with the naked eye.	1	0	2025-11-12	2025-11-12
77	271	You will need very specialized tool assistance for this challenge.	2	0	2025-11-12	2025-11-12
77	272	The effective difficulty of this challenge depends a lot on what tools you pick to tackle it.	3	0	2025-11-12	2025-11-12
77	273	This challenge cannot be solved by just reading our "Lorem Ipsum"-texts carefully.	4	0	2025-11-12	2025-11-12
78	274	Your attack payload must not trigger the protection against too many iterations and infinite loops.	1	0	2025-11-12	2025-11-12
78	275	This challenge uses the same leverage point as the "Perform a Remote Code Execution that would keep a less hardened application busy forever" challenge.	2	0	2025-11-12	2025-11-12
79	276	This vulnerability will not affect any customer of the shop. It is aimed exclusively at its developers.	1	0	2025-11-12	2025-11-12
79	277	This is a research-heavy challenge which does not involve any actual hacking.	2	0	2025-11-12	2025-11-12
79	278	Solving "Access a developer's forgotten backup file" before attempting this challenge will save you from a lot of frustration.	3	0	2025-11-12	2025-11-12
80	279	The 2FA implementation requires to store a secret for every user. You will need to find a way to access this secret in order to solve this challenge.	1	0	2025-11-12	2025-11-12
80	280	As always, first learn how the feature under attack is used and behaves under normal conditions.	2	0	2025-11-12	2025-11-12
80	281	Make sure you understand how 2FA with TOTP (time-based one-time password) works and which part of it is the critically sensitive one.	3	0	2025-11-12	2025-11-12
80	282	Solving the challenge "Retrieve a list of all user credentials via SQL Injection" before tackling this one will definitely help. But it will not carry you all the way.	4	0	2025-11-12	2025-11-12
81	283	This challenge exploits a weird option that is supported when signing tokens with JWT.	1	0	2025-11-12	2025-11-12
81	284	You should begin with retrieving a valid JWT from the application’s Authorization request header.	2	0	2025-11-12	2025-11-12
81	285	A JWT is only given to users who have logged in. They have a limited validity, so better do not dawdle.	3	0	2025-11-12	2025-11-12
81	286	Try to convince the site to give you a valid token with the required payload while downgrading to no encryption at all.	4	0	2025-11-12	2025-11-12
81	287	Make sure your JWT is URL safe!	5	0	2025-11-12	2025-11-12
82	288	You can attach a small file to the "Complaint" form. Investigate how this upload actually works.	1	0	2025-11-12	2025-11-12
82	289	First you should try to understand how the file upload is actually handled on the client and server side.	2	0	2025-11-12	2025-11-12
82	290	With this understanding you need to find a "weak spot" in the right place and have to craft an exploit for it.	3	0	2025-11-12	2025-11-12
83	291	You can attach a PDF or ZIP file to the "Complaint" form. Investigate how this upload actually works.	1	0	2025-11-12	2025-11-12
83	292	If you solved the "Upload a file larger than 100 kB" challenge, you should try to apply the same solution here	2	0	2025-11-12	2025-11-12
84	293	Gather information on where user data is stored and how it is addressed. Then craft a corresponding UNION SELECT attack.	1	0	2025-11-12	2025-11-12
84	294	Try to find an endpoint where you can influence data being retrieved from the server.	2	0	2025-11-12	2025-11-12
84	295	Craft a UNION SELECT attack string to join data from another table into the original result.	3	0	2025-11-12	2025-11-12
84	296	You might have to tackle some query syntax issues step-by-step, basically hopping from one error to the next	4	0	2025-11-12	2025-11-12
84	297	As with "Order the Christmas special offer of 2014" and "Exfiltrate the entire DB schema definition via SQL Injection" this cannot be achieved through the application frontend.	5	0	2025-11-12	2025-11-12
85	298	Without utilizing the vulnerability behind another ⭐⭐⭐⭐⭐⭐ challenge it is not possible to plant the XSS payload for this challenge.	1	0	2025-11-12	2025-11-12
85	299	The mentioned "marketing collateral" might have been publicly advertised by the Juice Shop but is not necessarily part of its sitemap yet.	2	0	2025-11-12	2025-11-12
85	300	It might help to perform some online searches for structurally similar web projects once you get stuck.	3	0	2025-11-12	2025-11-12
85	301	This challenge will always partially keep you blindfolded, no matter how hard you do research and analysis.	4	0	2025-11-12	2025-11-12
86	302	Try out all existing functionality involving the shopping basket while having an eye on the HTTP traffic.	1	0	2025-11-12	2025-11-12
86	303	There might be a client-side association of user to basket that you can try to manipulate.	2	0	2025-11-12	2025-11-12
86	304	In case you manage to update the database via SQL Injection so that a user is linked to another shopping basket, the application will not notice this challenge as solved.	3	0	2025-11-12	2025-11-12
87	305	Report one of two possible answers via the "Customer Feedback" form. Do not forget to submit the library's version as well.	1	0	2025-11-12	2025-11-12
87	306	Look for possible dependencies related to security in the package.json.bak you probably harvested earlier during the Access a developer’s forgotten backup file challenge.	2	0	2025-11-12	2025-11-12
87	307	Do some research on the internet for known security issues in the most suspicious application dependencies.	3	0	2025-11-12	2025-11-12
88	308	Report one of five possible answers via the "Customer Feedback" form.	1	0	2025-11-12	2025-11-12
88	309	Cryptographic functions only used in the "Apply some advanced cryptanalysis to find the real easter egg" challenge do not count as they are only a developer’s prank and not a serious security problem.	2	0	2025-11-12	2025-11-12
89	310	You have to find a way to beat the allowlist of allowed redirect URLs.	1	0	2025-11-12	2025-11-12
89	311	You can find several places where redirects happen in the OWASP Juice Shop.	2	0	2025-11-12	2025-11-12
89	312	The application will only allow you to redirect to allowlisted (previously referred to as whitelisted) URLs.	3	0	2025-11-12	2025-11-12
89	313	Tampering with the redirect mechanism might give you some valuable information about how it works under to hood.	4	0	2025-11-12	2025-11-12
90	314	The leverage point for this challenge is the deprecated B2B interface.	1	0	2025-11-12	2025-11-12
90	315	This challenge sounds a lot harder than it actually is, which amplifies how bad the underlying vulnerability is.	2	0	2025-11-12	2025-11-12
90	316	Doing some research on typical XEE attack patterns basically gives away the solution for free.	3	0	2025-11-12	2025-11-12
91	317	It is not as easy as sending a large amount of data directly to the deprecated B2B interface.	1	0	2025-11-12	2025-11-12
91	318	The leverage point for this is obviously the same as for the XXE Data Access challenge.	2	0	2025-11-12	2025-11-12
91	319	You can only solve this challenge by keeping the server busy for >2sec with your attack.	3	0	2025-11-12	2025-11-12
91	320	The effectiveness of attack payloads for this challenge might depend on the operating system the Juice Shop is running on.	4	0	2025-11-12	2025-11-12
92	321	This one is actually similar to the XXE DoS challenge in every way except the data format being (ab)used.	1	0	2025-11-12	2025-11-12
92	322	You can only solve this challenge by keeping the server busy for >2sec with your attack.	2	0	2025-11-12	2025-11-12
92	323	The effectiveness of attack payloads for this challenge might depend on the operating system the Juice Shop is running on.	3	0	2025-11-12	2025-11-12
93	324	Before you invest time bypassing the API, you might want to play around with the UI a bit.	1	0	2025-11-12	2025-11-12
94	325	Check the Photo Wall for an image that could not be loaded correctly.	1	0	2025-11-12	2025-11-12
94	326	You just have to (literally) inspect the problem to understand the basic issue.	2	0	2025-11-12	2025-11-12
94	327	It can also help to try out the Tweet-button of the entry and observe what happens.	3	0	2025-11-12	2025-11-12
95	328	This challenge would formally have to be in several categories as the developers made multiple gaffes for this to be possible.	1	0	2025-11-12	2025-11-12
95	329	Loading this page with an empty browser cache and on a slow (or throttled) connection will give you an idea on what the delivery box image is made of. Of course inspecting the page source will tell you just as much.	2	0	2025-11-12	2025-11-12
95	330	You need to dive deep into the actual Angular code to understand this one.	3	0	2025-11-12	2025-11-12
95	331	This challenge requires the exploitation of another vulnerability which even has its own two challenges in its very own category	4	0	2025-11-12	2025-11-12
95	332	This challenge can only be solved by strictly using the mentioned "cross-domain kittens". No other kittens from anywhere else can solve this challenge.	5	0	2025-11-12	2025-11-12
96	333	Try to guess what URL the endpoint might have.	1	0	2025-11-12	2025-11-12
96	334	The Juice Shop serves its metrics on the default path expected by Prometheus	2	0	2025-11-12	2025-11-12
96	335	Guessing the path is probably just as quick as taking the RTFM route via https://prometheus.io/docs/introduction/first_steps	3	0	2025-11-12	2025-11-12
97	336	Look closely at what happens when you attempt to upgrade your account.	1	0	2025-11-12	2025-11-12
97	337	Go to the payment page for a deluxe membership and try paying through different methods.	2	0	2025-11-12	2025-11-12
97	338	Try inspecting the requests that go out for each of these methods, using the browser’s developer tools.	3	0	2025-11-12	2025-11-12
97	339	Maybe playing around with the parameters in these requests could reveal something interesting.	4	0	2025-11-12	2025-11-12
98	340	Find a form which updates the username and then construct a malicious page in the online HTML editor. You probably need an older browser version for this.	1	0	2025-11-12	2025-11-12
98	341	Take a look at what happens when you change the username within the profile page.	2	0	2025-11-12	2025-11-12
98	342	Search for information about CSRF attacks and look out for examples that can be applied to this challenge.	3	0	2025-11-12	2025-11-12
98	343	Write the code for the CSRF attack within http://htmledit.squarefree.com and verify that it changes your username.	4	0	2025-11-12	2025-11-12
99	344	First, solve the "Perform a DOM XSS attack" challenge.	1	0	2025-11-12	2025-11-12
99	345	Now it is just a question of copying and pasting the payload into the same vulnerable field.	2	0	2025-11-12	2025-11-12
99	346	Crank up the volume of your computer before submitting the payload! ð	3	0	2025-11-12	2025-11-12
100	347	You might have to do some OSINT on his social media personas to find out his honest answer to the security question.	1	0	2025-11-12	2025-11-12
100	348	People often reuse aliases online. You might be able to find something by looking online for Uvogin’s name or slight variations of it based on his unique writing habits.	2	0	2025-11-12	2025-11-12
100	349	You might be able to find some existing OSINT tools to help you in this investigation.	3	0	2025-11-12	2025-11-12
101	350	Take a look at the meta data of the corresponding photo.	1	0	2025-11-12	2025-11-12
101	351	Make use of tools that can inspect the metadata of images.	2	0	2025-11-12	2025-11-12
101	352	Use this information to answer the security question of the John, who enjoys hiking in the park.	3	0	2025-11-12	2025-11-12
102	353	Take a look at the details in the photo to determine the location of where it was taken.	1	0	2025-11-12	2025-11-12
103	354	Think of a way to get a hold of the internal workings on the chatbot API.	1	0	2025-11-12	2025-11-12
103	355	In order to disable the chatbot for all users, you must first get an understanding of how it works under the hood.	2	0	2025-11-12	2025-11-12
103	356	The chatbot sure offers a lot of functionality. Could it be that juice-shop relies on a third party, possibly open source library for this?	3	0	2025-11-12	2025-11-12
103	357	Maybe you can try to gather clues from around juice shop and then go dumpster dive the internet to get a hold of the bot’s source.	4	0	2025-11-12	2025-11-12
104	358	Analyze and tamper with links in the application until you get to an unprotected directory listing.	1	0	2025-11-12	2025-11-12
104	359	Some files in there are not directly accessible because a security mechanism prevents access.	2	0	2025-11-12	2025-11-12
104	360	The Poison Null Byte can trick the security mechanism into thinking that the file you want has a valid file type.	3	0	2025-11-12	2025-11-12
104	361	Depending on the files you try to retrieve you will probably solve "Access a developer’s forgotten backup file", "Access a salesman’s forgotten backup file", "Access a misplaced SIEM signature file, or "Find the hidden easter egg" along the way.	4	0	2025-11-12	2025-11-12
105	362	The bot is reluctant to give you a coupon as it’s coming up with various excuses for not giving you one.	1	0	2025-11-12	2025-11-12
105	363	Asking over and over again like a little kid might actually help you succeed in this case.	2	0	2025-11-12	2025-11-12
105	364	No seriously, just keep asking.	3	0	2025-11-12	2025-11-12
106	365	You should read up on vulnerabilities in popular NodeJs template engines.	1	0	2025-11-12	2025-11-12
106	366	You should read up on Local File Read (LFR) vulnerabilities in popular NodeJS template engines.	2	0	2025-11-12	2025-11-12
106	367	Look for an easily forgettable endpoint in Juice Shop to test out the LFR attack.	3	0	2025-11-12	2025-11-12
106	368	500 Internal Server Error is always an interesting status code.	4	0	2025-11-12	2025-11-12
106	369	Fuzzing can also help with this challenge.	5	0	2025-11-12	2025-11-12
107	370	Either check the official documentation or inspect a notification UI element directly.	1	0	2025-11-12	2025-11-12
107	371	This challenge is most easily solvable immediately after a server restart.	2	0	2025-11-12	2025-11-12
107	372	Alternatively you can also inspect any "Challenge solved"-notification in your browser to understand its convenience feature.	3	0	2025-11-12	2025-11-12
108	373	Security Advisories are often listed in the security.txt	1	0	2025-11-12	2025-11-12
109	374	Have a look at the client-side code in the dev console.	1	0	2025-11-12	2025-11-12
110	375	The API call is part of a scheduled process "behind the scenes", i.e. completely unrelated to the web application.	1	0	2025-11-12	2025-11-12
110	376	Check the Juice Shop’s social media channels for regularly scheduled content being posted, possibly even indicating that it was automatically created.	2	0	2025-11-12	2025-11-12
110	377	Find out which part of the content might come from the response of an API call.	3	0	2025-11-12	2025-11-12
110	378	Find the place where the API call happens — as stated above, it is not in the web application — and then look for the API key itself.	4	0	2025-11-12	2025-11-12
\.


--
-- Data for Name: _imagecaptchas; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._imagecaptchas (id, image, answer, "UserId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: _memories; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._memories ("UserId", id, caption, "imagePath", "createdAt", "updatedAt") FROM stdin;
13	1	ð¼ #zatschi #whoneedsfourl	assets/public/images/uploads/ᓚᘏᗢ-#zatschi-#whoneedsfourlegs-1572600969477.jpg	2025-11-12	2025-11-12
4	2	Magn(et)ificent!	assets/public/images/uploads/magn(et)ificent!-1571814229653.jpg	2025-11-12	2025-11-12
4	3	My rare collectors item! [̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]	assets/public/images/uploads/my-rare-collectors-item!-[̲̅$̲̅(̲̅-͡°-͜ʖ-͡°̲̅)̲̅$̲̅]-1572603645543.jpg	2025-11-12	2025-11-12
21	4	Welcome to the Bee Haven (/#/bee-haven)ð	assets/public/images/uploads/BeeHaven.png	2025-11-12	2025-11-12
13	5	Sorted the pieces, starting assembly process...	assets/public/images/uploads/sorted-the-pieces,-starting-assembly-process-1721152307290.jpg	2025-11-12	2025-11-12
13	6	Building something literally bottom up...	assets/public/images/uploads/building-something-literally-bottom-up-1721152342603.jpg	2025-11-12	2025-11-12
13	7	Putting in the hardware...	assets/public/images/uploads/putting-in-the-hardware-1721152366854.jpg	2025-11-12	2025-11-12
13	8	Everything up and running!	assets/public/images/uploads/everything-up-and-running!-1721152385146.jpg	2025-11-12	2025-11-12
18	9	I love going hiking here...	assets/public/images/uploads/favorite-hiking-place.png	2025-11-12	2025-11-12
19	10	My old workplace...	assets/public/images/uploads/IMG_4253.jpg	2025-11-12	2025-11-12
\.


--
-- Data for Name: _privacyrequests; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._privacyrequests (id, "UserId", "deletionRequested", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: _products; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._products (id, name, description, price, "deluxePrice", image, "createdAt", "updatedAt", "deletedAt") FROM stdin;
1	Apple Juice (1000ml)	The all-time classic.	1.99	0.99	apple_juice.jpg	2025-11-12	2025-11-12	
2	Orange Juice (1000ml)	Made from oranges hand-picked by Uncle Dittmeyer.	2.99	2.49	orange_juice.jpg	2025-11-12	2025-11-12	
3	Eggfruit Juice (500ml)	Now with even more exotic flavour.	8.99	8.99	eggfruit_juice.jpg	2025-11-12	2025-11-12	
4	Raspberry Juice (1000ml)	Made from blended Raspberry Pi, water and sugar.	4.99	4.99	raspberry_juice.jpg	2025-11-12	2025-11-12	
5	Lemon Juice (500ml)	Sour but full of vitamins.	2.99	1.99	lemon_juice.jpg	2025-11-12	2025-11-12	
6	Banana Juice (1000ml)	Monkeys love it the most.	1.99	1.99	banana_juice.jpg	2025-11-12	2025-11-12	
7	OWASP Juice Shop T-Shirt	Real fans wear it 24/7!	22.49	22.49	fan_shirt.jpg	2025-11-12	2025-11-12	
8	OWASP Juice Shop CTF Girlie-Shirt	For serious Capture-the-Flag heroines only!	22.49	22.49	fan_girlie.jpg	2025-11-12	2025-11-12	
9	OWASP SSL Advanced Forensic Tool (O-Saft)	O-Saft is an easy to use tool to show information about SSL certificate and tests the SSL connection according given list of ciphers and various SSL configurations. <a href="https://www.owasp.org/index.php/O-Saft" target="_blank">More...</a>	0.01	0.01	orange_juice.jpg	2025-11-12	2025-11-12	
10	Christmas Super-Surprise-Box (2014 Edition)	Contains a random selection of 10 bottles (each 500ml) of our tastiest juices and an extra fan shirt for an unbeatable price! (Seasonal special offer! Limited availability!)	29.99	29.99	undefined.jpg	2025-11-12	2025-11-12	2025-11-12
11	Rippertuer Special Juice	Contains a magical collection of the rarest fruits gathered from all around the world, like Cherymoya Annona cherimola, Jabuticaba Myrciaria cauliflora, Bael Aegle marmelos... and others, at an unbelievable price! <br/><span style="color:red;">This item has been made unavailable because of lack of safety standards.</span> (This product is unsafe! We plan to remove it from the stock!)	16.99	16.99	undefined.jpg	2025-11-12	2025-11-12	2025-11-12
12	OWASP Juice Shop Sticker (2015/2016 design)	Die-cut sticker with the official 2015/2016 logo. By now this is a rare collectors item. <em>Out of stock!</em>	999.99	999.99	sticker.png	2025-11-12	2025-11-12	2025-11-12
13	OWASP Juice Shop Iron-Ons (16pcs)	Upgrade your clothes with washer safe <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">iron-ons</a> of the OWASP Juice Shop or CTF Extension logo!	14.99	14.99	iron-on.jpg	2025-11-12	2025-11-12	
14	OWASP Juice Shop Magnets (16pcs)	Your fridge will be even cooler with these OWASP Juice Shop or CTF Extension logo <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">magnets</a>!	15.99	15.99	magnets.jpg	2025-11-12	2025-11-12	
15	OWASP Juice Shop Sticker Page	Massive decoration opportunities with these OWASP Juice Shop or CTF Extension <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">sticker pages</a>! Each page has 16 stickers on it.	9.99	9.99	sticker_page.jpg	2025-11-12	2025-11-12	
16	OWASP Juice Shop Sticker Single	Super high-quality vinyl <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">sticker single</a> with the OWASP Juice Shop or CTF Extension logo! The ultimate laptop decal!	4.99	4.99	sticker_single.jpg	2025-11-12	2025-11-12	
17	OWASP Juice Shop Temporary Tattoos (16pcs)	Get one of these <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">temporary tattoos</a> to proudly wear the OWASP Juice Shop or CTF Extension logo on your skin! If you tweet a photo of yourself with the tattoo, you get a couple of our stickers for free! Please mention <a href="https://twitter.com/owasp_juiceshop" target="_blank"><code>@owasp_juiceshop</code></a> in your tweet!	14.99	14.99	tattoo.jpg	2025-11-12	2025-11-12	
18	OWASP Juice Shop Mug	Black mug with regular logo on one side and CTF logo on the other! Your colleagues will envy you!	21.99	21.99	fan_mug.jpg	2025-11-12	2025-11-12	
19	OWASP Juice Shop Hoodie	Mr. Robot-style apparel. But in black. And with logo.	49.99	49.99	fan_hoodie.jpg	2025-11-12	2025-11-12	
20	OWASP Juice Shop-CTF Velcro Patch	4x3.5" embroidered patch with velcro backside. The ultimate decal for every tactical bag or backpack!	2.92	2.92	velcro-patch.jpg	2025-11-12	2025-11-12	
21	Woodruff Syrup "Forest Master X-Treme"	Harvested and manufactured in the Black Forest, Germany. Can cause hyperactive behavior in children. Can cause permanent green tongue when consumed undiluted.	6.99	6.99	woodruff_syrup.jpg	2025-11-12	2025-11-12	
22	Green Smoothie	Looks poisonous but is actually very good for your health! Made from green cabbage, spinach, kiwi and grass.	1.99	1.99	green_smoothie.jpg	2025-11-12	2025-11-12	
23	Quince Juice (1000ml)	Juice of the <em>Cydonia oblonga</em> fruit. Not exactly sweet but rich in Vitamin C.	4.99	4.99	quince.jpg	2025-11-12	2025-11-12	
24	Apple Pomace	Finest pressings of apples. Allergy disclaimer: Might contain traces of worms. Can be <a href="/#recycle">sent back to us</a> for recycling.	0.89	0.89	apple_pressings.jpg	2025-11-12	2025-11-12	
25	Fruit Press	Fruits go in. Juice comes out. Pomace you can send back to us for recycling purposes.	89.99	89.99	fruit_press.jpg	2025-11-12	2025-11-12	
26	OWASP Juice Shop Logo (3D-printed)	This rare item was designed and handcrafted in Sweden. This is why it is so incredibly expensive despite its complete lack of purpose.	99.99	99.99	3d_keychain.jpg	2025-11-12	2025-11-12	
27	Juice Shop Artwork	Unique masterpiece painted with different kinds of juice on 90g/m² lined paper.	278.74	278.74	artwork.jpg	2025-11-12	2025-11-12	2025-11-12
28	Global OWASP WASPY Award 2017 Nomination	Your chance to nominate up to three quiet pillars of the OWASP community ends 2017-06-30! <a href="https://www.owasp.org/index.php/WASPY_Awards_2017">Nominate now!</a>	0.03	0.03	waspy.png	2025-11-12	2025-11-12	2025-11-12
29	Strawberry Juice (500ml)	Sweet & tasty!	3.99	3.99	strawberry_juice.jpeg	2025-11-12	2025-11-12	
30	Carrot Juice (1000ml)	As the old German saying goes: "Carrots are good for the eyes. Or has anyone ever seen a rabbit with glasses?"	2.99	2.99	carrot_juice.jpeg	2025-11-12	2025-11-12	
31	OWASP Juice Shop Sweden Tour 2017 Sticker Sheet (Special Edition)	10 sheets of Sweden-themed stickers with 15 stickers on each.	19.1	19.1	stickersheet_se.png	2025-11-12	2025-11-12	2025-11-12
32	Pwning OWASP Juice Shop	<em>The official Companion Guide</em> by Björn Kimminich available <a href="https://leanpub.com/juice-shop">for free on LeanPub</a> and also <a href="https://pwning.owasp-juice.shop">readable online</a>!	5.99	5.99	cover_small.jpg	2025-11-12	2025-11-12	
33	Melon Bike (Comeback-Product 2018 Edition)	The wheels of this bicycle are made from real water melons. You might not want to ride it up/down the curb too hard.	2999	2999	melon_bike.jpeg	2025-11-12	2025-11-12	
34	OWASP Juice Shop Coaster (10pcs)	Our 95mm circle coasters are printed in full color and made from thick, premium coaster board.	19.99	19.99	coaster.jpg	2025-11-12	2025-11-12	
35	OWASP Snakes and Ladders - Web Applications	This amazing web application security awareness board game is <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=1969196030">available for Tabletop Simulator on Steam Workshop</a> now!	0.01	0.01	snakes_ladders.jpg	2025-11-12	2025-11-12	
36	OWASP Snakes and Ladders - Mobile Apps	This amazing mobile app security awareness board game is <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=1970691216">available for Tabletop Simulator on Steam Workshop</a> now!	0.01	0.01	snakes_ladders_m.jpg	2025-11-12	2025-11-12	
37	OWASP Juice Shop Holographic Sticker	Die-cut holographic sticker. Stand out from those 08/15-sticker-covered laptops with this shiny beacon of 80's coolness!	2	2	holo_sticker.png	2025-11-12	2025-11-12	
38	OWASP Juice Shop "King of the Hill" Facemask	Facemask with compartment for filter from 50% cotton and 50% polyester.	13.49	13.49	fan_facemask.jpg	2025-11-12	2025-11-12	
39	Juice Shop Adversary Trading Card (Common)	Common rarity "Juice Shop" card for the <a href="https://docs.google.com/forms/d/e/1FAIpQLSecLEakawSQ56lBe2JOSbFwFYrKDCIN7Yd3iHFdQc5z8ApwdQ/viewform">Adversary Trading Cards</a> CCG.	2.99	0.99	ccg_common.png	2025-11-12	2025-11-12	2025-11-12
40	Juice Shop Adversary Trading Card (Super Rare)	Super rare "Juice Shop" card with holographic foil-coating for the <a href="https://docs.google.com/forms/d/e/1FAIpQLSecLEakawSQ56lBe2JOSbFwFYrKDCIN7Yd3iHFdQc5z8ApwdQ/viewform">Adversary Trading Cards</a> CCG.	99.99	69.99	ccg_foil.png	2025-11-12	2025-11-12	2025-11-12
41	Juice Shop "Permafrost" 2020 Edition	Exact version of <a href="https://github.com/juice-shop/juice-shop/releases/tag/v9.3.1-PERMAFROST">OWASP Juice Shop that was archived on 02/02/2020</a> by the GitHub Archive Program and ultimately went into the <a href="https://github.blog/2020-07-16-github-archive-program-the-journey-of-the-worlds-open-source-code-to-the-arctic">Arctic Code Vault</a> on July 8. 2020 where it will be safely stored for at least 1000 years.	9999.99	9999.99	permafrost.jpg	2025-11-12	2025-11-12	
42	Best Juice Shop Salesman Artwork	Unique digital painting depicting Stan, our most qualified and almost profitable salesman. He made a succesful carreer in selling used ships, coffins, krypts, crosses, real estate, life insurance, restaurant supplies, voodoo enhanced asbestos and courtroom souvenirs before <em>finally</em> adding his expertise to the Juice Shop marketing team.	5000	5000	artwork2.jpg	2025-11-12	2025-11-12	
43	OWASP Juice Shop Card (non-foil)	Mythic rare <small><em>(obviously...)</em></small> card "OWASP Juice Shop" with three distinctly useful abilities. Alpha printing, mint condition. A true collectors piece to own!	1000	1000	card_alpha.jpg	2025-11-12	2025-11-12	
44	20th Anniversary Celebration Ticket	Get your <a href="https://20thanniversary.owasp.org/" target="_blank">free ð« for OWASP 20th Anniversary Celebration</a> online conference! Hear from world renowned keynotes and special speakers, network with your peers and interact with our event sponsors. With an anticipated 10k+ attendees from around the world, you will not want to miss this live on-line eve	1.0E-20	1.0E-20	20th.jpeg	2025-11-12	2025-11-12	2025-11-12
45	OWASP Juice Shop LEGO™ Tower	Want to host a Juice Shop CTF in style? Build <a href="https://github.com/OWASP/owasp-swag/blob/master/projects/juice-shop/lego/OWASP%20JuiceShop%20Pi-server%201.2.pdf" target="_blank">your own LEGO™ tower</a> which holds four Raspberry Pi 4 models with PoE HAT modules <a href="https://github.com/juice-shop/multi-juicer/blob/main/guides/raspberry-pi/raspberry-pi.md" target="_blank">running a MultiJuicer Kubernetes cluster</a>! Wire to a switch and connect to your network to have an out-of-the-box ready CTF up in no time!	799	799	lego_case.jpg	2025-11-12	2025-11-12	
46	DSOMM & Juice Shop User Day Ticket	You are going to the OWASP Global AppSec San Francisco 2024? <a href="https://www.eventbrite.com/e/owasp-global-appsec-san-francisco-2024-tickets-723699172707" target="_blank">Get a ticket<sup>*</sup></a> for this amazing side event as well! Check the juice-packed agenda <a href="https://owasp.org/www-project-juice-shop/#div-userday2024" target="_blank">here</a> for all the details!<br><br><small><small><sup>*</sup>=scroll down to <strong>Elevate: DSOMM and Juice Shop User Day (Sept. 25)</strong> after clicking <em>Get Tickets</em> on Eventbrite. Ticket price set to only covers fees for room, AV, and catering throughout the day.</small></small>	55.2	55.2	user_day_ticket.png	2025-11-12	2025-11-12	2025-11-12
\.


--
-- Data for Name: _quantities; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._quantities ("ProductId", id, quantity, "limitPerUser", "createdAt", "updatedAt") FROM stdin;
1	1	97	5	2025-11-12	2025-11-12
2	2	35		2025-11-12	2025-11-12
3	3	47		2025-11-12	2025-11-12
4	4	50		2025-11-12	2025-11-12
5	5	97	5	2025-11-12	2025-11-12
6	6	94		2025-11-12	2025-11-12
7	7	69	5	2025-11-12	2025-11-12
8	8	49		2025-11-12	2025-11-12
9	9	60		2025-11-12	2025-11-12
10	10	85		2025-11-12	2025-11-12
11	11	99		2025-11-12	2025-11-12
12	12	96		2025-11-12	2025-11-12
13	13	91		2025-11-12	2025-11-12
14	14	49		2025-11-12	2025-11-12
15	15	50		2025-11-12	2025-11-12
16	16	33		2025-11-12	2025-11-12
17	17	62		2025-11-12	2025-11-12
18	18	83		2025-11-12	2025-11-12
19	19	60		2025-11-12	2025-11-12
20	20	5	5	2025-11-12	2025-11-12
21	21	44		2025-11-12	2025-11-12
22	22	67		2025-11-12	2025-11-12
23	23	60		2025-11-12	2025-11-12
24	24	53	5	2025-11-12	2025-11-12
25	25	86		2025-11-12	2025-11-12
26	26	72		2025-11-12	2025-11-12
27	27	0		2025-11-12	2025-11-12
28	28	90		2025-11-12	2025-11-12
29	29	50		2025-11-12	2025-11-12
30	30	37		2025-11-12	2025-11-12
31	31	61		2025-11-12	2025-11-12
32	32	88		2025-11-12	2025-11-12
33	33	3	1	2025-11-12	2025-11-12
34	34	0		2025-11-12	2025-11-12
35	35	8		2025-11-12	2025-11-12
36	36	0		2025-11-12	2025-11-12
37	37	0		2025-11-12	2025-11-12
38	38	0	1	2025-11-12	2025-11-12
39	39	35	5	2025-11-12	2025-11-12
40	40	2	1	2025-11-12	2025-11-12
41	41	1	1	2025-11-12	2025-11-12
42	42	1		2025-11-12	2025-11-12
43	43	3	1	2025-11-12	2025-11-12
44	44	97	1	2025-11-12	2025-11-12
45	45	3	1	2025-11-12	2025-11-12
46	46	37	1	2025-11-12	2025-11-12
\.


--
-- Data for Name: _recycles; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._recycles ("UserId", "AddressId", id, quantity, "isPickup", date, "createdAt", "updatedAt") FROM stdin;
2	4	1	800	1	2270-01-17	2025-11-12	2025-11-12
3	6	2	1320	1	2006-01-14	2025-11-12	2025-11-12
4	1	3	120	1	2018-04-16	2025-11-12	2025-11-12
1	3	4	300	1	2018-01-17	2025-11-12	2025-11-12
4	1	5	350	1	2018-03-17	2025-11-12	2025-11-12
3	6	6	200	1	2018-07-17	2025-11-12	2025-11-12
4	1	7	140	1	2018-03-19	2025-11-12	2025-11-12
1	3	8	150	1	2018-05-12	2025-11-12	2025-11-12
16	2	9	500	1	2019-02-18	2025-11-12	2025-11-12
\.


--
-- Data for Name: _securityanswers; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._securityanswers ("UserId", "SecurityQuestionId", id, answer, "createdAt", "updatedAt") FROM stdin;
1	2	1	db8b1e81c9a3e9ed03ae162f3197209977bc68c5b095c6ed4d163baa653f48a0	2025-11-12	2025-11-12
2	1	2	d2425fd880e7f38c5b091a2aa32c89e7de94f0aee517ba8a6025e1287acefade	2025-11-12	2025-11-12
3	10	3	afba0d71978fac68c89e6ba6a9f3442c1cf4b3027671902149c7c0781cdd0b6f	2025-11-12	2025-11-12
5	7	4	204f63f5dece37ea4df3f29050cba038ea5b32d7ae86cd948975b6ca74e313b9	2025-11-12	2025-11-12
6	10	5	08c8793987e93173b1cb4b1b24001e195fee3610450888afffd710c887c0cc48	2025-11-12	2025-11-12
7	7	6	c4f2d6c5215446a069f5487086c6f65a53b9e719a9ab699aea85c9e1ce56927b	2025-11-12	2025-11-12
8	8	7	f714720833fad2b9b54d04b6b8c7f621669f895a95c2380f1da096f33919cc1b	2025-11-12	2025-11-12
9	1	8	fd716fef5eeb6ea6aec1152f3546e13af619a21efcb2dde60095c9a33139bb23	2025-11-12	2025-11-12
10	1	9	d19ed0704fb17e91783d817573a31b31fa854ba43cd24e83cf3fe239e62b291c	2025-11-12	2025-11-12
11	8	10	7d8268635173723dee3efcac0b777e966faa192f887872c11677e26f8fe17d6e	2025-11-12	2025-11-12
12	9	11	a4a92267c1e498456525d10a4daa2a8d162fba4cd57424ed829518cfde06d144	2025-11-12	2025-11-12
13	7	12	20a257391db163bf0149fe64d04236548fc30cddae8304417d9dae791e78c910	2025-11-12	2025-11-12
14	1	13	4174bbb06244ddf551712a39de34463eb35b7b557a282bec3df9441525b2b636	2025-11-12	2025-11-12
15	7	14	1a894c9b830f4faaa8f16fa331d59a114e66c74687ff1817e1bfb3e3bd723957	2025-11-12	2025-11-12
16	12	15	7ec07c10ded9d8dbc15b61c9ddb7f6fde7ae5966465bb367d326dd8680df8d97	2025-11-12	2025-11-12
17	10	16	36481637c39bdc7ac3b2464ca726cd492c8a700f0410cc7c474e79a9f987d10a	2025-11-12	2025-11-12
20	10	17	ec41931c3f53c21d4540429918097df275fc996654d303125cc026dc633a8234	2025-11-12	2025-11-12
21	10	18	b4c1f242c023965e9bfcf3d8fd369b03d7efd113c5ef013c001d209f6d2ee8c2	2025-11-12	2025-11-12
18	14	19	20f745f2273f83e00d815ddbf0795eede275d0d57cc29b8bd153057a6ecd8777	2025-11-12	2025-11-12
19	10	20	c17784023efa4ab2789eff0bb2dd3a66f0d9b0514a1fdbf400946480c9f9b67f	2025-11-12	2025-11-12
\.


--
-- Data for Name: _securityquestions; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._securityquestions (id, question, "createdAt", "updatedAt") FROM stdin;
1	Your eldest siblings middle name?	2025-11-12	2025-11-12
2	Mother's maiden name?	2025-11-12	2025-11-12
3	Mother's birth date? (MM/DD/YY)	2025-11-12	2025-11-12
4	Father's birth date? (MM/DD/YY)	2025-11-12	2025-11-12
5	Maternal grandmother's first name?	2025-11-12	2025-11-12
6	Paternal grandmother's first name?	2025-11-12	2025-11-12
7	Name of your favorite pet?	2025-11-12	2025-11-12
8	Last name of dentist when you were a teenager? (Do not include 'Dr.')	2025-11-12	2025-11-12
9	Your ZIP/postal code when you were a teenager?	2025-11-12	2025-11-12
10	Company you first work for as an adult?	2025-11-12	2025-11-12
11	Your favorite book?	2025-11-12	2025-11-12
12	Your favorite movie?	2025-11-12	2025-11-12
13	Number of one of your customer or ID cards?	2025-11-12	2025-11-12
14	What's your favorite place to go hiking?	2025-11-12	2025-11-12
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
SecurityQuestions	14
Users	22
SecurityAnswers	20
Addresses	6
Feedbacks	8
Cards	6
Challenges	110
Hints	378
Products	46
Baskets	5
BasketItems	8
Complaints	1
Recycles	9
Quantities	46
Wallets	22
Deliveries	3
Memories	10
\.


--
-- Data for Name: _users; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._users (id, username, email, password, role, "deluxeToken", "lastLoginIp", "profileImage", "totpSecret", "isActive", "createdAt", "updatedAt", "deletedAt") FROM stdin;
1		admin@juice-sh.op	0192023a7bbd73250516f069df18b500	admin			assets/public/images/uploads/defaultAdmin.png		1	2025-11-12	2025-11-12	
2		jim@juice-sh.op	e541ca7ecf72b8d1286474fc613e5e45	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
3		bender@juice-sh.op	0c36e517e3fa95aabf1bbffc6744a4ef	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
4	bkimminich	bjoern.kimminich@gmail.com	6edd9d726cbdc873c539e41ae8757b8c	admin			assets/public/images/uploads/defaultAdmin.png		1	2025-11-12	2025-11-12	
5		ciso@juice-sh.op	861917d5fa5f1172f931dc700d81a8fb	deluxe	d715c2c75d4a42d3825a050e0a0163c1959b51165373f17bd8eed7b1e05bf20d		assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
6		support@juice-sh.op	3869433d74e3d0c86fd25562f836bc82	admin			assets/public/images/uploads/defaultAdmin.png		1	2025-11-12	2025-11-12	
7		morty@juice-sh.op	f2f933d0bb0ba057bc8e33b8ebd6d9e8	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
8		mc.safesearch@juice-sh.op	b03f4b0ba8b458fa0acdc02cdb953bc8	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
9		J12934@juice-sh.op	3c2abc04e4a6ea8f1327d0aae3714b7d	admin			assets/public/images/uploads/defaultAdmin.png		1	2025-11-12	2025-11-12	
10	wurstbrot	wurstbrot@juice-sh.op	9ad5b0492bbe528583e128d2a8941de4	admin			assets/public/images/uploads/defaultAdmin.png	IFTXE3SPOEYVURT2MRYGI52TKJ4HC3KH	1	2025-11-12	2025-11-12	
11		amy@juice-sh.op	030f05e45e30710c3ad3c32f00de0473	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
12		bjoern@juice-sh.op	7f311911af16fa8f418dd1a3051d6810	admin			assets/public/images/uploads/12.png		1	2025-11-12	2025-11-12	
13		bjoern@owasp.org	9283f1b2e9669749081963be0462e466	deluxe	efe2f1599e2d93440d5243a1ffaf5a413b70cf3ac97156bd6fab9b5ddfcbe0e4		assets/public/images/uploads/13.jpg		1	2025-11-12	2025-11-12	
14		chris.pike@juice-sh.op	10a783b9ed19ea1c67c3a27699f0095b	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	2025-11-12
15		accountant@juice-sh.op	963e10f92a70b4b463220cb4c5d636dc	accounting		123.456.789	assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
16		uvogin@juice-sh.op	05f92148b4b60f7dacd04cceebb8f1af	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
17		demo	fe01ce2a7fbac8fafaed7c982a04e229	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
18	j0hNny	john@juice-sh.op	00479e957b6b42c459ee5746478e4d45	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
19	E=ma²	emma@juice-sh.op	402f1c4a75e316afec5a6ea63147f739	customer			assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
20	SmilinStan	stan@juice-sh.op	e9048a3f43dd5e094ef733f3bd88ea64	deluxe	8f70e0f4b05685efff1ab979e8f5d7e39850369309bb206c2ad3f7d51a1f4e39		assets/public/images/uploads/20.jpg		1	2025-11-12	2025-11-12	
21	evmrox	ethereum@juice-sh.op	2c17c6393771ee3048ae34d6b380c5ec	deluxe	b49b30b294d8c76f5a34fc243b9b9cccb057b3f675b07a5782276a547957f8ff		assets/public/images/uploads/default.svg		1	2025-11-12	2025-11-12	
22		testing@juice-sh.op	b616a64605a07941fbd31868aea3b54b	admin			assets/public/images/uploads/defaultAdmin.png		1	2025-11-12	2025-11-12	
\.


--
-- Data for Name: _wallets; Type: TABLE DATA; Schema: public; Owner: juiceshop
--

COPY public._wallets ("UserId", id, balance, "createdAt", "updatedAt") FROM stdin;
1	1	0	2025-11-12	2025-11-12
2	2	100	2025-11-12	2025-11-12
3	3	0	2025-11-12	2025-11-12
4	4	0	2025-11-12	2025-11-12
5	5	0	2025-11-12	2025-11-12
6	6	0	2025-11-12	2025-11-12
7	7	100	2025-11-12	2025-11-12
8	8	0	2025-11-12	2025-11-12
9	9	0	2025-11-12	2025-11-12
10	10	0	2025-11-12	2025-11-12
11	11	0	2025-11-12	2025-11-12
12	12	0	2025-11-12	2025-11-12
13	13	0	2025-11-12	2025-11-12
14	14	0	2025-11-12	2025-11-12
15	15	0	2025-11-12	2025-11-12
16	16	100	2025-11-12	2025-11-12
17	17	200	2025-11-12	2025-11-12
18	18	0	2025-11-12	2025-11-12
19	19	0	2025-11-12	2025-11-12
20	20	0	2025-11-12	2025-11-12
21	21	0	2025-11-12	2025-11-12
22	22	0	2025-11-12	2025-11-12
\.


--
-- PostgreSQL database dump complete
--

