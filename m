Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B55A632AC
	for <lists+usrp-users@lfdr.de>; Sat, 15 Mar 2025 23:23:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8E11385F0A
	for <lists+usrp-users@lfdr.de>; Sat, 15 Mar 2025 18:23:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742077428; bh=F7ZBpw2151De9QLAH2v/Q0gHawHScK4AqFWBzmaO7EE=;
	h=To:Date:From:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VT64psMKEYYvqemc/EkH9OYoQVjNIlrvlPIoj4K1W1xXk1jmv9Bow/jdZr/p8G3Kj
	 v2opwYaNsexLAzlZZq8MueqFqdCP1il87pvjOIQVX8bX4ICxYYqBxXejhASTTfzxCX
	 uEWGt9HVuNN/ne94/BeZ7IaAdzaXMQeqegwzRQUbSAxx6aEnrGVvIdBFljgUbDU9Av
	 o2Av5BRSUze5SqvEg+s+IHKkGm7nR2XjPZJZElBu6+A7961jhUYvzeNkq6b2Q7dssi
	 3+0FmorMozoT/K6WlK/TuFsUSo3oUYm2ZQLCIN4vA16wjYOMegklsZ9hMTRiZZR9XR
	 OeSv3rmNyjVOw==
Received: from common3.relix.de (common3.relix.de [176.9.241.120])
	by mm2.emwd.com (Postfix) with ESMTPS id C1BF5385E3C
	for <usrp-users@lists.ettus.com>; Sat, 15 Mar 2025 18:22:44 -0400 (EDT)
Received: by common3.relix.de (Postfix, from userid 33)
	id 4776D7629B5; Sat, 15 Mar 2025 22:22:43 +0000 (UTC)
To: "Gnuradio-discuss" <discuss-gnuradio@gnu.org>, "debian-hams" <debian-hams@lists.debian.org>, "sdr" <sdr@lists.darc.de>, usrp-users@lists.ettus.com, tangerinesdr@lists.tapr.org, dist_c@lists.darc.de
MIME-Version: 1.0
Date: Sat, 15 Mar 2025 22:22:43 +0000
X-Mailer: RainLoop/1.13.0
From: heller@relix.de
Message-ID: <1a39b9401474f32a8abc76bcc8a4b61e@relix.de>
Message-ID-Hash: RBL2NJR7PDIXBZC37VMFPARF344W6PGN
X-Message-ID-Hash: RBL2NJR7PDIXBZC37VMFPARF344W6PGN
X-MailFrom: www-data@common3.relix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sebastian Kipp <Sebastiankipp@gmx.de>, Michael Hartje <hartje@etech.hs-bremen.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SDRA-2025
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RBL2NJR7PDIXBZC37VMFPARF344W6PGN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3180337599994844921=="


--===============3180337599994844921==
Content-Type: multipart/alternative;
 boundary="--=_RainLoop_179_705770736.1742077363"


----=_RainLoop_179_705770736.1742077363
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

** apologies for cross-posting **  =0A=0ACall for Contributions: SDRA-202=
5 Online and Friedrichshafen=0A	HAMRADIO Friedrichshafen Software Defined=
 Radio Academy 2025 (SDRA-2025) =0A=0A	Date: Friday 27.06.2025, Saturday =
28.06.2025 (and Sunday 29.06.2025) =0A=0A	Conference Websites: =0A	* http=
s://www.hamradio-friedrichshafen.de (https://www.hamradio-friedrichshafen=
.de) =0A	* https://2025.sdra.io (https://2025.sdra.io) =0A	SDRA-2025 invi=
tes radio amateurs and researchers from acadaemia and industry to submit =
papers for oral and poster presentations on recent research that addresse=
s theoretical aspects, algorithms, applications, hardware and software ar=
chitectures for applied Software Defined Radio systems and resources and =
other aspects of SDR, as well as survey and discussion papers. The invita=
tion particularly addresses open source research and projects. We also pa=
rticularly invite specialists giving introductory talks and tutorials on =
SDR technologies.   =0A=0AUlrich L Rohde Award=0A	The Ulrich L Rohde Awar=
d was created in 2022 and shall be granted for innovative research in the=
 field of Software Defined Radio. It is a paper award, which requires a w=
ritten submission by applicants. There is a first, second and third place=
 being awarded with the amount of 500, 300 and 100 Euro. =0A=0A	All submi=
tted papers are eligible for the award. =0A=0A	Award Committee: =0A	* Pro=
f. Dr. Michael Hartje, HS Bremen, DK5HH =0A	* Prof. Dr. Michael Niemetz, =
OTH Regensburg, DG2RAM =0A	* Prof. Dr. Herv=C3=A9 Boeglen, Univ. Poitiers=
, F4JET (European GNURadio Days) =0A	* Prof. Dr. Jean-Michel Friedt, FEMT=
O-ST, Univ. Besancon (European GNURadio Days) =0ASDRA Topics:=0A	* Advanc=
es in GNURadio related projects and research =0A	* Algorithms, applicatio=
ns, architectures in SDR systems =0A	* Real Time signal processing =0A	* =
Innovative applications using modern ADC/DAC environments =0ASubmission I=
nformation=0A	How to submit: Please send an abstract of approximately 250=
 words to: =0A=0A	sdra@darc.de (mailto:sdra@darc.de) =0A=0A	Please includ=
e the following information: =0A	* Paper title =0A	* Author's name (and c=
allsign). Names and callsigns of all authors if multiple authors. =0A	* A=
uthor's affiliation =0A	* Country =0A	* Email address of the main author =
=0A	All accepted papers will be published. Publication details will be av=
ailable at a later point of time. =0A=0A	We ask authors to keep a limit o=
f 6 pages. If there is a reason why the paper should be longer, please co=
ntact us. =0A=0A	We also solicit Posters and Demo papers: Poster/Demo pap=
ers describe a small focused result, a negative result, or a late-breakin=
g result, or a description of a system that can be demonstrated on-site a=
t the conference. =0A=0A	Papers should be formatted using the IEEE A4 tem=
plates: https://www.ieee.org/conferences_events/conferences/publishing/te=
mplates.html (https://www.ieee.org/conferences_events/conferences/publish=
ing/templates.html) =0A=0A	Note that applications for the Ulrich L. Rohde=
 Award must be submitted in form of a written paper.   =0A=0AOrganization=
=0A	* Prof. Dr. Michael Hartje, DK5HH =0A	* Markus Heller, M.A., DL8RDS =
=0ASenior Programme Committee=0A	* Prof. Dr. Michael Hartje, HS Bremen, D=
K5HH =0A	* Prof. Dr. Michael Niemetz, OTH Regensburg, DG2RAM =0A	* Prof. =
Dr. Michael M=C3=A4chtel, HTWG Konstanz, DL2SBS =0AImportant Dates:=0A	Pl=
ease note that we welcome earlier recordings. The earlier you can submit =
and arrange the recording with our video team, the better. =0A	* Abstract=
 Submission: 30.04.2025 =0A	* Acceptance Notification: 15.05.2025 =0A	* P=
resentation Recording: 15.05.2025 - 15.06.2025 =0A	* PlayOut Date and Liv=
e Event: 27/28/29.06.2025 =0AContact=0A	For enquiries and paper submissio=
n details please do not hesitate to contact us: =0A=0A	Email: sdra@darc.d=
e (mailto:sdra@darc.de) Tel.: +49.173.3835315

----=_RainLoop_179_705770736.1742077363
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><meta http-equiv=3D"Content-Type" content=3D"t=
ext/html; charset=3Dutf-8" /></head><body><div data-html-editor-font-wrap=
per=3D"true" style=3D"font-family: arial, sans-serif; font-size: 13px;"><=
div><div><div style=3D"font-family: arial, sans-serif;font-size: 13px"><d=
iv><div><div style=3D"font-family: arial, sans-serif;font-size: 13px"><di=
v><div><div style=3D"font-family: arial, sans-serif;font-size: 13px"><div=
><div><div style=3D"font-family: arial, sans-serif;font-size: 13px"><div>=
<div><div style=3D"font-family: arial, sans-serif;font-size: 13px"> <br><=
signature></signature><div class=3D"span8 offset2 article-content"> <p>**=
 apologies for cross-posting **</p> <div class=3D"section" id=3D"call-for=
-contributions-sdra-2025-online-and-friedrichshafen"> <h2>Call for Contri=
butions: SDRA-2025 Online and Friedrichshafen</h2> <p>HAMRADIO Friedrichs=
hafen Software Defined Radio Academy 2025 (SDRA-2025)</p> <p>Date: Friday=
 27.06.2025, Saturday 28.06.2025 (and Sunday 29.06.2025)</p> <p>Conferenc=
e Websites:</p> <ul class=3D"simple"> <li><a class=3D"reference external"=
 href=3D"https://www.hamradio-friedrichshafen.de">https://www.hamradio-fr=
iedrichshafen.de</a></li> <li><a class=3D"reference external" href=3D"htt=
ps://2025.sdra.io">https://2025.sdra.io</a></li> </ul> <p>SDRA-2025 invit=
es radio amateurs and researchers from acadaemia and industry to submit p=
apers for oral and poster presentations on recent research that addresses=
 theoretical aspects, algorithms, applications, hardware and software arc=
hitectures for applied Software Defined Radio systems and resources and o=
ther aspects of SDR, as well as survey and discussion papers. The invitat=
ion particularly addresses open source research and projects. We also par=
ticularly invite specialists giving introductory talks and tutorials on S=
DR technologies.</p> </div> <div class=3D"section" id=3D"ulrich-l-rohde-a=
ward"> <h2>Ulrich L Rohde Award</h2> <p>The Ulrich L Rohde Award was crea=
ted in 2022 and shall be granted for innovative research in the field of =
Software Defined Radio. It is a paper award, which requires a written sub=
mission by applicants. There is a first, second and third place being awa=
rded with the amount of 500, 300 and 100 Euro.</p> <p>All submitted paper=
s are eligible for the award.</p> <p>Award Committee:</p> <ul class=3D"si=
mple"> <li>Prof. Dr. Michael Hartje, HS Bremen, DK5HH</li> <li>Prof. Dr. =
Michael Niemetz, OTH Regensburg, DG2RAM</li> <li>Prof. Dr. Herv=C3=A9 Boe=
glen, Univ. Poitiers, F4JET (European GNURadio Days)</li> <li>Prof. Dr. J=
ean-Michel Friedt, FEMTO-ST, Univ. Besancon (European GNURadio Days)</li>=
 </ul> </div> <div class=3D"section" id=3D"sdra-topics"> <h2>SDRA Topics:=
</h2> <ul class=3D"simple"> <li>Advances in GNURadio related projects and=
 research</li> <li>Algorithms, applications, architectures in SDR systems=
</li> <li>Real Time signal processing</li> <li>Innovative applications us=
ing modern ADC/DAC environments</li> </ul> </div> <div class=3D"section" =
id=3D"submission-information"> <h2>Submission Information</h2> <p>How to =
submit: Please send an abstract of approximately 250 words to:</p> <p><a =
class=3D"reference external" href=3D"mailto:sdra@darc.de">sdra@darc.de</a=
></p> <p>Please include the following information:</p> <ul class=3D"simpl=
e"> <li>Paper title</li> <li>Author's name (and callsign). Names and call=
signs of all authors if multiple authors.</li> <li>Author's affiliation</=
li> <li>Country</li> <li>Email address of the main author</li> </ul> <p>A=
ll accepted papers will be published. Publication details will be availab=
le at a later point of time.</p> <p>We ask authors to keep a limit of 6 p=
ages. If there is a reason why the paper should be longer, please contact=
 us.</p> <p>We also solicit Posters and Demo papers: Poster/Demo papers d=
escribe a small focused result, a negative result, or a late-breaking res=
ult, or a description of a system that can be demonstrated on-site at the=
 conference.</p> <p>Papers should be formatted using the IEEE A4 template=
s: <a class=3D"reference external" href=3D"https://www.ieee.org/conferenc=
es_events/conferences/publishing/templates.html">https://www.ieee.org/con=
ferences_events/conferences/publishing/templates.html</a></p> <p>Note tha=
t applications for the Ulrich L. Rohde Award must be submitted in form of=
 a written paper.</p> </div> <div class=3D"section" id=3D"organization"> =
<h2>Organization</h2> <ul class=3D"simple"> <li>Prof. Dr. Michael Hartje,=
 DK5HH</li> <li>Markus Heller, M.A., DL8RDS</li> </ul> </div> <div class=
=3D"section" id=3D"senior-programme-committee"> <h2>Senior Programme Comm=
ittee</h2> <ul class=3D"simple"> <li>Prof. Dr. Michael Hartje, HS Bremen,=
 DK5HH</li> <li>Prof. Dr. Michael Niemetz, OTH Regensburg, DG2RAM</li> <l=
i>Prof. Dr. Michael M=C3=A4chtel, HTWG Konstanz, DL2SBS</li> </ul> </div>=
 <div class=3D"section" id=3D"important-dates"> <h2>Important Dates:</h2>=
 <p>Please note that we welcome earlier recordings. The earlier you can s=
ubmit and arrange the recording with our video team, the better.</p> <ul =
class=3D"simple"> <li>Abstract Submission: 30.04.2025</li> <li>Acceptance=
 Notification: 15.05.2025</li> <li>Presentation Recording: 15.05.2025 - 1=
5.06.2025</li> <li>PlayOut Date and Live Event: 27/28/29.06.2025</li> </u=
l> </div> <div class=3D"section" id=3D"contact"> <h2>Contact</h2> <p>For =
enquiries and paper submission details please do not hesitate to contact =
us:</p> <p>Email: <a class=3D"reference external" href=3D"mailto:sdra@dar=
c.de">sdra@darc.de</a> Tel.: +49.173.3835315</p> </div> </div> </div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></body></html>

----=_RainLoop_179_705770736.1742077363--

--===============3180337599994844921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3180337599994844921==--
