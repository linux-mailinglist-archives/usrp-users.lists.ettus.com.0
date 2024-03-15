Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8A387CB96
	for <lists+usrp-users@lfdr.de>; Fri, 15 Mar 2024 11:45:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0A8F385200
	for <lists+usrp-users@lfdr.de>; Fri, 15 Mar 2024 06:45:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710499520; bh=9r/xDF1kP8Hp0vf2lqWpHZm8e/w0fOeD++vL1uWHqh8=;
	h=To:Date:From:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ykvT872/60CtvmKkrJuV8Kzdt7JNx+/r1ZMbFyxpWsyZ9Xu7hRkIKKsgKwZw5AyJp
	 sVNIhIQV5HPcTMqCNW/XM7xFPM9rwOg7vKMywpVMNRnrFErMbzJx7p86AnkX7exa//
	 2SblBusDFXlLhLKlcAQDA0rA4DJR2Ds2soX9lNCQSktsFoDTjpczRpZyDB7myB20Jj
	 xUxBChemS0kRHT/U8I5Yq9ciMZcTWwckC+ByFulJkaoVELnAO2IrEhQXc+YhIy3qu4
	 UGRAPPUE8Cl0VKveKENGXL/NNmTJoVfzgZrIgI6Nj6pvvBLMe+RTe8Qc2UZdX4OSmh
	 Yo/rrTg6KSvKA==
Received: from common3.relix.de (common3.relix.de [176.9.241.120])
	by mm2.emwd.com (Postfix) with ESMTPS id DA4C5385170
	for <usrp-users@lists.ettus.com>; Fri, 15 Mar 2024 06:44:48 -0400 (EDT)
Received: by common3.relix.de (Postfix, from userid 33)
	id 194A2760D41; Fri, 15 Mar 2024 10:44:47 +0000 (UTC)
To: "Gnuradio-discuss" <discuss-gnuradio@gnu.org>, "debian-hams" <debian-hams@lists.debian.org>, "sdr" <sdr@lists.darc.de>, usrp-users@lists.ettus.com, tangerinesdr@lists.tapr.org, dist_c@lists.darc.de
MIME-Version: 1.0
Date: Fri, 15 Mar 2024 10:44:47 +0000
X-Mailer: RainLoop/1.13.0
From: heller@relix.de
Message-ID: <f0447c86d40182df75cdff61b0a5165f@relix.de>
Message-ID-Hash: 24ICFPOBOFNRIKUAJB4IOXYINWOZ5TY6
X-Message-ID-Hash: 24ICFPOBOFNRIKUAJB4IOXYINWOZ5TY6
X-MailFrom: www-data@common3.relix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sebastian Kipp <Sebastiankipp@gmx.de>, Michael Hartje <hartje@etech.hs-bremen.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SDRA-2024
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/24ICFPOBOFNRIKUAJB4IOXYINWOZ5TY6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8557065385887604562=="


--===============8557065385887604562==
Content-Type: multipart/alternative;
 boundary="--=_RainLoop_611_105014689.1710499487"


----=_RainLoop_611_105014689.1710499487
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

** apologies for cross-posting ** =0ACall for Contributions: SDRA-2024 On=
line and Friedrichshafen=0A	HAMRADIO Friedrichshafen Software Defined Rad=
io Academy 2024 (SDRA-2024) =0A=0A	Date: Friday 28.06.2024, Saturday 29.0=
6.2024 (and Sunday 30.06.2024) =0A=0A	Conference Websites: =0A	* https://=
www.hamradio-friedrichshafen.de (https://www.hamradio-friedrichshafen.de)=
 =0A	* https://2024.sdra.io (https://2023.sdra.io) =0A	SDRA-2024 invites =
radio amateurs and researchers from acadaemia and industry to submit pape=
rs for oral and poster presentations on recent research that addresses th=
eoretical aspects, algorithms, applications, hardware and software archit=
ectures for applied Software Defined Radio systems and resources and othe=
r aspects of SDR, as well as survey and discussion papers. The invitation=
 particularly addresses open source research and projects. We also partic=
ularly invite specialists giving introductory talks and tutorials on SDR =
technologies.  =0AUlrich L Rohde Award=0A	The Ulrich L Rohde Award was cr=
eated in 2022 and shall be granted for innovative research in the field o=
f Software Defined Radio. It is a paper award, which requires a written s=
ubmission by applicants. There is a first, second and third place being a=
warded with the amount of 500, 300 and 100 Euro. =0A=0A	All submitted pap=
ers are eligible for the award.  =0ASDRA Topics:=0A	* Advances in GNURadi=
o related projects and research =0A	* Algorithms, applications, architect=
ures in SDR systems =0A	* Real Time signal processing =0A	* Innovative ap=
plications using modern ADC/DAC environments =0ASubmission Information=0A=
	How to submit: Please send an abstract of approximately 250 words to: =
=0A=0A	sdra@darc.de (mailto:sdra@darc.de) =0A=0A	Please include the follo=
wing information: =0A	* Paper title =0A	* Author's name (and callsign). N=
ames and callsigns of all authors if multiple authors. =0A	* Author's aff=
iliation =0A	* Country =0A	* Email address of the main author =0A	All acc=
epted papers will be published. Publication details will be available at =
a later point of time. =0A=0A	We ask authors to keep a limit of 6 pages. =
If there is a reason why the paper should be longer, please contact us. =
=0A=0A	We also solicit Posters and Demo papers: Poster/Demo papers descri=
be a small focused result, a negative result, or a late-breaking result, =
or a description of a system that can be demonstrated on-site at the conf=
erence. =0A=0A	Papers should be formatted using the IEEE A4 templates: ht=
tps://www.ieee.org/conferences_events/conferences/publishing/templates.ht=
ml (https://www.ieee.org/conferences_events/conferences/publishing/templa=
tes.html) =0A=0A	Note that applications for the Ulrich L. Rohde Award mus=
t be submitted in form of a written paper.  =0AOrganization=0A	* Prof. Dr=
. Michael Hartje, DK5HH =0A	* Markus Heller, M.A., DL8RDS =0ASenior Progr=
amme Committee=0A	* Prof. Dr. Michael Hartje, HS Bremen, DK5HH =0A	* Prof=
. Dr. Michael Niemetz, OTH Regensburg, DG2RAM =0A	* Prof. Dr. Michael M=
=C3=A4chtel, HTWG Konstanz, DL2SBS =0AImportant Dates:=0A	Please note tha=
t we welcome earlier recordings. The earlier you can submit and arrange t=
he recording with our video team, the better. =0A	* Abstract Submission: =
30.04.2024 =0A	* Acceptance Notification: 15.05.2024 =0A	* Presentation R=
ecording: 15.05.2024 - 15.06.2024 =0A	* PlayOut Date and Live Event: 28/2=
9/30.06.2024 =0AContact=0A	For enquiries and paper submission details ple=
ase do not hesitate to contact us: =0A=0A	Email: sdra@darc.de (mailto:sdr=
a@darc.de) Tel.: +49.89.420956305-0

----=_RainLoop_611_105014689.1710499487
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><meta http-equiv=3D"Content-Type" content=3D"t=
ext/html; charset=3Dutf-8" /></head><body><div data-html-editor-font-wrap=
per=3D"true" style=3D"font-family: arial, sans-serif; font-size: 13px;"><=
div><div><div style=3D"font-family: arial, sans-serif;font-size: 13px"><d=
iv><div><div style=3D"font-family: arial, sans-serif;font-size: 13px"><di=
v><div><div style=3D"font-family: arial, sans-serif;font-size: 13px"><div=
><div><div style=3D"font-family: arial, sans-serif;font-size: 13px"> <div=
> <p>** apologies for cross-posting **</p> <div> <h2>Call for Contributio=
ns: SDRA-2024 Online and Friedrichshafen</h2> <p>HAMRADIO Friedrichshafen=
 Software Defined Radio Academy 2024 (SDRA-2024)</p> <p>Date: Friday 28.0=
6.2024, Saturday 29.06.2024 (and Sunday 30.06.2024)</p> <p>Conference Web=
sites:</p> <ul> <li><a rel=3D"external nofollow noopener noreferrer" targ=
et=3D"_blank" tabindex=3D"-1" href=3D"https://www.hamradio-friedrichshafe=
n.de">https://www.hamradio-friedrichshafen.de</a></li> <li><a rel=3D"exte=
rnal nofollow noopener noreferrer" target=3D"_blank" tabindex=3D"-1" href=
=3D"https://2023.sdra.io">https://2024.sdra.io</a></li> </ul> <p>SDRA-202=
4 invites radio amateurs and researchers from acadaemia and industry to s=
ubmit papers for oral and poster presentations on recent research that ad=
dresses theoretical aspects, algorithms, applications, hardware and softw=
are architectures for applied Software Defined Radio systems and resource=
s and other aspects of SDR, as well as survey and discussion papers. The =
invitation particularly addresses open source research and projects. We a=
lso particularly invite specialists giving introductory talks and tutoria=
ls on SDR technologies.</p> </div> <div> <h2>Ulrich L Rohde Award</h2> <p=
>The Ulrich L Rohde Award was created in 2022 and shall be granted for in=
novative research in the field of Software Defined Radio. It is a paper a=
ward, which requires a written submission by applicants. There is a first=
, second and third place being awarded with the amount of 500, 300 and 10=
0 Euro.</p> <p>All submitted papers are eligible for the award.</p> </div=
> <div> <h2>SDRA Topics:</h2> <ul> <li>Advances in GNURadio related proje=
cts and research</li> <li>Algorithms, applications, architectures in SDR =
systems</li> <li>Real Time signal processing</li> <li>Innovative applicat=
ions using modern ADC/DAC environments</li> </ul> </div> <div> <h2>Submis=
sion Information</h2> <p>How to submit: Please send an abstract of approx=
imately 250 words to:</p> <p><a rel=3D"external nofollow noopener norefer=
rer" target=3D"_blank" tabindex=3D"-1" href=3D"mailto:sdra@darc.de">sdra@=
darc.de</a></p> <p>Please include the following information:</p> <ul> <li=
>Paper title</li> <li>Author's name (and callsign). Names and callsigns o=
f all authors if multiple authors.</li> <li>Author's affiliation</li> <li=
>Country</li> <li>Email address of the main author</li> </ul> <p>All acce=
pted papers will be published. Publication details will be available at a=
 later point of time.</p> <p>We ask authors to keep a limit of 6 pages. I=
f there is a reason why the paper should be longer, please contact us.</p=
> <p>We also solicit Posters and Demo papers: Poster/Demo papers describe=
 a small focused result, a negative result, or a late-breaking result, or=
 a description of a system that can be demonstrated on-site at the confer=
ence.</p> <p>Papers should be formatted using the IEEE A4 templates: <a r=
el=3D"external nofollow noopener noreferrer" target=3D"_blank" tabindex=
=3D"-1" href=3D"https://www.ieee.org/conferences_events/conferences/publi=
shing/templates.html">https://www.ieee.org/conferences_events/conferences=
/publishing/templates.html</a></p> <p>Note that applications for the Ulri=
ch L. Rohde Award must be submitted in form of a written paper.</p> </div=
> <div> <h2>Organization</h2> <ul> <li>Prof. Dr. Michael Hartje, DK5HH</l=
i> <li>Markus Heller, M.A., DL8RDS</li> </ul> </div> <div> <h2>Senior Pro=
gramme Committee</h2> <ul> <li>Prof. Dr. Michael Hartje, HS Bremen, DK5HH=
</li> <li>Prof. Dr. Michael Niemetz, OTH Regensburg, DG2RAM</li> <li>Prof=
. Dr. Michael M=C3=A4chtel, HTWG Konstanz, DL2SBS</li> </ul> </div> <div>=
 <h2>Important Dates:</h2> <p>Please note that we welcome earlier recordi=
ngs. The earlier you can submit and arrange the recording with our video =
team, the better.</p> <ul> <li>Abstract Submission: 30.04.2024</li> <li>A=
cceptance Notification: 15.05.2024</li> <li>Presentation Recording: 15.05=
.2024 - 15.06.2024</li> <li>PlayOut Date and Live Event: 28/29/30.06.2024=
</li> </ul> </div> <div> <h2>Contact</h2> <p>For enquiries and paper subm=
ission details please do not hesitate to contact us:</p> <p>Email: <a rel=
=3D"external nofollow noopener noreferrer" target=3D"_blank" tabindex=3D"=
-1" href=3D"mailto:sdra@darc.de">sdra@darc.de</a> Tel.: +49.89.420956305-=
0</p> </div> </div> <br><br><signature></signature> </div></div></div></d=
iv></div></div></div></div></div></div></div></div></div></body></html>

----=_RainLoop_611_105014689.1710499487--

--===============8557065385887604562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8557065385887604562==--
