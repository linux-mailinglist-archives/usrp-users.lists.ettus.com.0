Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPDSEgmO6mnK0gIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2026 23:24:25 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C095457CE4
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2026 23:24:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8C49386A6E
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2026 17:24:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776979462; bh=OH5eI2nfrm3fNmRR55QS1iPusCENgCAOUPj/wNranO4=;
	h=To:Date:From:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Vb6qmBzKqOBxF7Xn2vTvR2K5lLP5qa1TtzHIGj+tJPOBCPV+A03trjsd6mb4NSZZQ
	 GhtskFDI6Hbi6gnN1yENd46nWk64g7iGIqlLsnumXdLAnTdQ7vq9ailK0v2kpe8SMM
	 dDT7t7+R7uv7kjTYa6QzQLSkfKsCfv5ibFmzWwXbKcWTRyBnog7eT0gt9MqlNfNVyd
	 6ejnNM4vf0MXDIJuA8Ih6fLsWGDZ3l4xOJH5Vc2M1fAkEllMBo1T6PjfXVxVxX6lhb
	 ayvtWwqc1/5lEouk8714Aq12lQEyKiKK4I9WYi7OxVRCfyZVDNqD87Vg+bsU1YQNIt
	 eM3cmewizjFYA==
Received: from common3.relix.de (common3.relix.de [176.9.241.120])
	by mm2.emwd.com (Postfix) with ESMTPS id B9682386A19
	for <usrp-users@lists.ettus.com>; Thu, 23 Apr 2026 17:23:45 -0400 (EDT)
Received: by common3.relix.de (Postfix, from userid 33)
	id 7EDFD76276F; Thu, 23 Apr 2026 21:23:44 +0000 (UTC)
To: "Gnuradio-discuss" <discuss-gnuradio@gnu.org>, "debian-hams" <debian-hams@lists.debian.org>, "sdr" <sdr@lists.darc.de>, usrp-users@lists.ettus.com, tangerinesdr@lists.tapr.org, dist_c@lists.darc.de
MIME-Version: 1.0
Date: Thu, 23 Apr 2026 21:23:44 +0000
X-Mailer: RainLoop/1.13.0
From: heller@relix.de
Message-ID: <3cfc7d339664f8b84459f0fc7ffcf487@relix.de>
Message-ID-Hash: VIATVPCEUASQGILDPRLVLURBEJWF2MCF
X-Message-ID-Hash: VIATVPCEUASQGILDPRLVLURBEJWF2MCF
X-MailFrom: www-data@common3.relix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sebastian Kipp <Sebastiankipp@gmx.de>, Michael Hartje <hartje@etech.hs-bremen.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SDRA-2026
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VIATVPCEUASQGILDPRLVLURBEJWF2MCF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4878685614290341739=="
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[relix.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmx.de,etech.hs-bremen.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[heller@relix.de,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,hamradio-friedrichshafen.de:url,ieee.org:url,relix.de:mid,emwd.com:dkim,sdra.io:url]
X-Rspamd-Queue-Id: 1C095457CE4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============4878685614290341739==
Content-Type: multipart/alternative;
 boundary="--=_RainLoop_954_212092599.1776979424"


----=_RainLoop_954_212092599.1776979424
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

** apologies for cross-posting ** =0A=0ACall for Contributions: SDRA-2026=
 Online and Friedrichshafen=0A	HAMRADIO Friedrichshafen Software Defined =
Radio Academy 2026 (SDRA-2026) =0A=0A	Date: Friday 26.06.2026, Saturday 2=
7.06.2026 =0A=0A	Conference Websites: =0A	* https://www.hamradio-friedric=
hshafen.de (https://www.hamradio-friedrichshafen.de/) =0A	* https://2026.=
sdra.io (https://2026.sdra.io/) =0A	SDRA-2026 invites radio amateurs and =
researchers from acadaemia and industry to submit papers for oral and pos=
ter presentations on recent research that addresses theoretical aspects, =
algorithms, applications, hardware and software architectures for applied=
 Software Defined Radio systems and resources and other aspects of SDR, a=
s well as survey and discussion papers. The invitation particularly addre=
sses open source research and projects. We also particularly invite speci=
alists giving introductory talks and tutorials on SDR technologies. =0A=
=0AUlrich L Rohde Award=0A	The Ulrich L Rohde Award was created in 2022 a=
nd shall be granted for innovative research in the field of Software Defi=
ned Radio. It is a paper award, which requires a written submission by ap=
plicants. There is a first, second and third place being awarded with the=
 amount of 500, 300 and 100 Euro. =0A=0A	All submitted papers are eligibl=
e for the award. =0A=0A	Award Committee: =0A	* Prof. Dr. Michael Hartje, =
HS Bremen, DK5HH =0A	* Prof. Dr. Michael Niemetz, OTH Regensburg, DG2RAM =
=0A	* Prof. Dr. Herv=C3=A9 Boeglen, Univ. Poitiers, F4JET (European GNURa=
dio Days) =0A	* Prof. Dr. Jean-Michel Friedt, FEMTO-ST, Univ. Besancon (E=
uropean GNURadio Days) =0ASDRA Topics:=0A	* Advances in GNURadio related =
projects and research =0A	* Algorithms, applications, architectures in SD=
R systems =0A	* Real Time signal processing =0A	* Innovative applications=
 using modern ADC/DAC environments =0ASubmission Information=0A	How to su=
bmit: Please send an abstract of approximately 250 words to: =0A=0A	sdra@=
darc.de (mailto:sdra@darc.de) =0A=0A	Please include the following informa=
tion: =0A	* Paper title =0A	* Author's name (and callsign). Names and cal=
lsigns of all authors if multiple authors. =0A	* Author's affiliation =0A=
	* Country =0A	* Email address of the main author =0A	All accepted papers=
 will be published. Publication details will be available at a later poin=
t of time. =0A=0A	We ask authors to keep a limit of 6 pages. If there is =
a reason why the paper should be longer, please contact us. =0A=0A	We als=
o solicit Posters and Demo papers: Poster/Demo papers describe a small fo=
cused result, a negative result, or a late-breaking result, or a descript=
ion of a system that can be demonstrated on-site at the conference. =0A=
=0A	Papers should be formatted using the IEEE A4 templates: https://www.i=
eee.org/conferences_events/conferences/publishing/templates.html (https:/=
/www.ieee.org/conferences_events/conferences/publishing/templates.html) =
=0A=0A	Note that applications for the Ulrich L. Rohde Award must be submi=
tted in form of a written paper. =0A=0AOrganization=0A	* Prof. Dr. Michae=
l Hartje, DK5HH =0A	* Markus Heller, M.A., DL8RDS =0ASenior Programme Com=
mittee=0A	* Prof. Dr. Michael Hartje, HS Bremen, DK5HH =0A	* Prof. Dr. Mi=
chael Niemetz, OTH Regensburg, DG2RAM =0A	* Prof. Dr. Michael M=C3=A4chte=
l, HTWG Konstanz, DL2SBS =0AImportant Dates:=0A	Please note that we welco=
me earlier recordings. The earlier you can submit and arrange the recordi=
ng with our video team, the better. =0A	* Abstract Submission: 15.05.2026=
 =0A	* Presentation Recording: 15.05.2026 - 15.06.2026 =0A	* PlayOut Date=
 and Live Event: 26/27.06.2026 =0AContact=0A	For enquiries and paper subm=
ission details please do not hesitate to contact us: =0A=0A	Email: sdra@d=
arc.de (mailto:sdra@darc.de) Tel.: +49.173.3835315

----=_RainLoop_954_212092599.1776979424
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><meta http-equiv=3D"Content-Type" content=3D"t=
ext/html; charset=3Dutf-8" /></head><body><div data-html-editor-font-wrap=
per=3D"true" style=3D"font-family: arial, sans-serif; font-size: 13px;"> =
<p>** apologies for cross-posting **</p> <h2>Call for Contributions: SDRA=
-2026 Online and Friedrichshafen</h2> <p>HAMRADIO Friedrichshafen Softwar=
e Defined Radio Academy 2026 (SDRA-2026)</p> <p>Date: Friday 26.06.2026, =
Saturday 27.06.2026</p> <p>Conference Websites:</p> <ul> <li><a href=3D"h=
ttps://www.hamradio-friedrichshafen.de/">https://www.hamradio-friedrichsh=
afen.de</a></li> <li><a href=3D"https://2026.sdra.io/">https://2026.sdra.=
io</a></li> </ul> <p>SDRA-2026 invites radio amateurs and researchers fro=
m acadaemia and industry to submit papers for oral and poster presentatio=
ns on recent research that addresses theoretical aspects, algorithms, app=
lications, hardware and software architectures for applied Software Defin=
ed Radio systems and resources and other aspects of SDR, as well as surve=
y and discussion papers. The invitation particularly addresses open sourc=
e research and projects. We also particularly invite specialists giving i=
ntroductory talks and tutorials on SDR technologies.</p> <h2>Ulrich L Roh=
de Award</h2> <p>The Ulrich L Rohde Award was created in 2022 and shall b=
e granted for innovative research in the field of Software Defined Radio.=
 It is a paper award, which requires a written submission by applicants. =
There is a first, second and third place being awarded with the amount of=
 500, 300 and 100 Euro.</p> <p>All submitted papers are eligible for the =
award.</p> <p>Award Committee:</p> <ul> <li>Prof. Dr. Michael Hartje, HS =
Bremen, DK5HH</li> <li>Prof. Dr. Michael Niemetz, OTH Regensburg, DG2RAM<=
/li> <li>Prof. Dr. Herv=C3=A9 Boeglen, Univ. Poitiers, F4JET (European GN=
URadio Days)</li> <li>Prof. Dr. Jean-Michel Friedt, FEMTO-ST, Univ. Besan=
con (European GNURadio Days)</li> </ul> <h2>SDRA Topics:</h2> <ul> <li>Ad=
vances in GNURadio related projects and research</li> <li>Algorithms, app=
lications, architectures in SDR systems</li> <li>Real Time signal process=
ing</li> <li>Innovative applications using modern ADC/DAC environments</l=
i> </ul> <h2>Submission Information</h2> <p>How to submit: Please send an=
 abstract of approximately 250 words to:</p> <p><a href=3D"mailto:sdra@da=
rc.de">sdra@darc.de</a></p> <p>Please include the following information:<=
/p> <ul> <li>Paper title</li> <li>Author's name (and callsign). Names and=
 callsigns of all authors if multiple authors.</li> <li>Author's affiliat=
ion</li> <li>Country</li> <li>Email address of the main author</li> </ul>=
 <p>All accepted papers will be published. Publication details will be av=
ailable at a later point of time.</p> <p>We ask authors to keep a limit o=
f 6 pages. If there is a reason why the paper should be longer, please co=
ntact us.</p> <p>We also solicit Posters and Demo papers: Poster/Demo pap=
ers describe a small focused result, a negative result, or a late-breakin=
g result, or a description of a system that can be demonstrated on-site a=
t the conference.</p> <p>Papers should be formatted using the IEEE A4 tem=
plates: <a href=3D"https://www.ieee.org/conferences_events/conferences/pu=
blishing/templates.html">https://www.ieee.org/conferences_events/conferen=
ces/publishing/templates.html</a></p> <p>Note that applications for the U=
lrich L. Rohde Award must be submitted in form of a written paper.</p> <h=
2>Organization</h2> <ul> <li>Prof. Dr. Michael Hartje, DK5HH</li> <li>Mar=
kus Heller, M.A., DL8RDS</li> </ul> <h2>Senior Programme Committee</h2> <=
ul> <li>Prof. Dr. Michael Hartje, HS Bremen, DK5HH</li> <li>Prof. Dr. Mic=
hael Niemetz, OTH Regensburg, DG2RAM</li> <li>Prof. Dr. Michael M=C3=A4ch=
tel, HTWG Konstanz, DL2SBS</li> </ul> <h2>Important Dates:</h2> <p>Please=
 note that we welcome earlier recordings. The earlier you can submit and =
arrange the recording with our video team, the better.</p> <ul> <li>Abstr=
act Submission: 15.05.2026</li> <li>Presentation Recording: 15.05.2026 - =
15.06.2026</li> <li>PlayOut Date and Live Event: 26/27.06.2026</li> </ul>=
 <h2>Contact</h2> <p>For enquiries and paper submission details please do=
 not hesitate to contact us:</p> <p>Email: <a href=3D"mailto:sdra@darc.de=
">sdra@darc.de</a> Tel.: +49.173.3835315</p> <signature></signature> </di=
v></body></html>

----=_RainLoop_954_212092599.1776979424--

--===============4878685614290341739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4878685614290341739==--
