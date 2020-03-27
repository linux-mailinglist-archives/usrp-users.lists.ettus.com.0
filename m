Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFED196071
	for <lists+usrp-users@lfdr.de>; Fri, 27 Mar 2020 22:33:45 +0100 (CET)
Received: from [::1] (port=43360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jHwbo-00085U-Eb; Fri, 27 Mar 2020 17:33:44 -0400
Received: from barracuda.dynetics.com ([204.154.192.63]:34050)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93)
 (envelope-from <btv1==3555c421da2==Ryan.Carmichael@dynetics.com>)
 id 1jHwbj-0007wf-Vp
 for usrp-users@lists.ettus.com; Fri, 27 Mar 2020 17:33:40 -0400
X-ASG-Debug-ID: 1585344976-10620d75e97bc8c0001-5wTQH4
Received: from MX5.in.dynetics.com (MX5.in.dynetics.com [10.1.15.132]) by
 barracuda.dynetics.com with ESMTP id BgeQCEyC9yL7H1l6 (version=TLSv1.2
 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO);
 Fri, 27 Mar 2020 16:36:16 -0500 (CDT)
X-Barracuda-Envelope-From: Ryan.Carmichael@dynetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.1.15.132
Received: from MAUI.in.dynetics.com ([169.254.1.66]) by MX5.in.dynetics.com
 ([10.1.15.132]) with mapi id 14.03.0487.000; Fri, 27 Mar 2020 16:32:58 -0500
X-Barracuda-RBL-IP: 169.254.1.66
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] X310 UHD 3.15 Lockups
X-ASG-Orig-Subj: Re: [USRP-users] X310 UHD 3.15 Lockups
Thread-Index: AdYEf0dy8Vp+gSXSTnKrU8f0Pr0Eig==
Date: Fri, 27 Mar 2020 21:32:57 +0000
Message-ID: <10F7328F6AD1354BA6DD787687B66B9001A3050C58@Maui.in.dynetics.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.120.128.231]
MIME-Version: 1.0
X-Barracuda-Connect: MX5.in.dynetics.com[10.1.15.132]
X-Barracuda-Start-Time: 1585344976
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.in.dynetics.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at dynetics.com
X-Barracuda-Scan-Msg-Size: 12066
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No,
 SCORE=0.00 using per-user scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.80839
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [USRP-users] X310 UHD 3.15 Lockups
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Carmichael, Ryan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Carmichael, Ryan" <Ryan.Carmichael@dynetics.com>
Content-Type: multipart/mixed; boundary="===============6163452907052058882=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6163452907052058882==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_10F7328F6AD1354BA6DD787687B66B9001A3050C58Mauiindynetic_"

--_000_10F7328F6AD1354BA6DD787687B66B9001A3050C58Mauiindynetic_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus D=
. Leech via USRP-users
Sent: Friday, March 27, 2020 4:27 PM
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] Re: [USRP-users] X310 UHD 3.15 Lockups

On 03/27/2020 04:15 PM, Carmichael, Ryan via USRP-users wrote:
I recently updated from 3.11.1 to 3.15LTS to try to resolve a receive locku=
p problem, however it still appears to be happening (albeit seemingly less =
frequently).

Essentially, stream->recv() gets into a state where it never returns, even =
though we are using the default timeout (0.1). Verified via debugger that r=
ecv() itself is just hanging.

We essentially have a function A that roughly looks like the code below (I'=
m not leaving much out). We call this function A over and over quite freque=
ntly. Are there any red flags here?

A() {
    uhd::stream_cmd_t rxStreamCmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_=
AND_DONE);
    rxStreamCmd.stream_now =3D true;
    rxStreamCmd.time_spec =3D uhd::time_spec_t();
    rxStreamCmd.num_samps =3D nSamples_a;

    rxStream ->issue_stream_cmd(rxStreamCmd);

    numReceived =3D 0;
    uhd::rx_metadata_t metaData

    while (numReceived < nSamples_a) {
        .
        .
        // calculate numLeftToRead
        .
        .
        uint samplesReceived =3D rxStream->recv(buffer, numLeftToRead, meta=
Data);
        .
        .
        // calculate numReceived
    }
}

This "lockup" typically does not require the radio to be restarted, just my=
 application.

________________________________

Windows or Linux?   Native or VM?

My gut says this is an IP/Network stack issue.


________________________________

Native, RHEL 7 - Linux localhost.localdomain 3.10.0-1062.1.1.el7.x86_64 #1 =
SMP Tue Aug 13 18:39:59 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
10 GB NICs. MTUs set to 9000.
0b:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ =
Network Connection (rev 01)
0b:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ =
Network Connection (rev 01)
0d:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ =
Network Connection (rev 01)
0d:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ =
Network Connection (rev 01)



________________________________

The information contained in this message, and any attachments, may contain=
 privileged and/or proprietary information that is intended solely for the =
person or entity to which it is addressed. Moreover, it may contain export =
restricted technical data controlled by Export Administration Regulations (=
EAR) or the International Traffic in Arms Regulations (ITAR). Any review, r=
etransmission, dissemination, or re-export to foreign or domestic entities =
by anyone other than the intended recipient in accordance with EAR and/or I=
TAR regulations is prohibited.

--_000_10F7328F6AD1354BA6DD787687B66B9001A3050C58Mauiindynetic_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b>=
<span style=3D"color:windowtext"> USRP-users &lt;usrp-users-bounces@lists.e=
ttus.com&gt;
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> Friday, March 27, 2020 4:27 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] X310 UHD 3.15 Lockups<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On 03/27/2020 04:15 P=
M, Carmichael, Ryan via USRP-users wrote:<span style=3D"font-size:12.0pt"><=
o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">I recently updated from 3.11.1 to 3.15LTS to try to =
resolve a receive lockup problem, however it still appears to be happening =
(albeit seemingly less frequently).
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Essentially, stream-&gt;recv() gets into a state whe=
re it never returns, even though we are using the default timeout (0.1). Ve=
rified via debugger that recv() itself is just hanging.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">We essentially have a function A that roughly looks =
like the code below (I&#8217;m not leaving much out). We call this function=
 A over and over quite frequently. Are there any red flags here?<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">A() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp;&nbsp;uhd::stream_cmd_t rxStreamCmd(uhd=
::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; rxStreamCmd.stream_now =3D true;<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; rxStreamCmd.time_spec =3D uhd::ti=
me_spec_t();<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; rxStreamCmd.num_samps =3D nSample=
s_a;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; rxStream -&gt;issue_stream_cmd(rx=
StreamCmd);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; numReceived =3D 0;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; uhd::rx_metadata_t metaData<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; while (numReceived &lt; nSamples_=
a) {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // calcul=
ate numLeftToRead<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint samp=
lesReceived =3D rxStream-&gt;recv(buffer, numLeftToRead, metaData);<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // calcul=
ate numReceived<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">This &#8220;lockup&#8221; typically does not require=
 the radio to be restarted, just my application.
<o:p></o:p></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:12.0pt;font-family:&quot=
;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></i></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><i><s=
pan style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif=
">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></i></div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif">Windows or Linux?&nbsp;&nbsp; Native or VM?<br>
<br>
My gut says this is an IP/Network stack issue.<br>
<br>
<br>
<i><o:p></o:p></i></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><i><s=
pan style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif=
">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></i></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">Native, RHEL 7 - Linux localhost.localdomain 3.10.0-1062.1.1.el7.x=
86_64 #1 SMP Tue Aug 13 18:39:59 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">10 GB NICs. MTUs set to 9000.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">0b:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit =
SFI/SFP&#43; Network Connection (rev 01)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">0b:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit =
SFI/SFP&#43; Network Connection (rev 01)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">0d:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit =
SFI/SFP&#43; Network Connection (rev 01)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D">0d:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit =
SFI/SFP&#43; Network Connection (rev 01)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"color:=
#1F497D"><o:p>&nbsp;</o:p></span></p>
</div>
<i><br>
<hr>
<p style=3D"font-size:8pt; line-height:9pt; font-style:monospace">The infor=
mation contained in this message, and any attachments, may contain privileg=
ed and/or proprietary information that is intended solely for the person or=
 entity to which it is addressed.
 Moreover, it may contain export restricted technical data controlled by Ex=
port Administration Regulations (EAR) or the International Traffic in Arms =
Regulations (ITAR). Any review, retransmission, dissemination, or re-export=
 to foreign or domestic entities
 by anyone other than the intended recipient in accordance with EAR and/or =
ITAR regulations is prohibited.</p>
</i>
</body>
</html>

--_000_10F7328F6AD1354BA6DD787687B66B9001A3050C58Mauiindynetic_--


--===============6163452907052058882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6163452907052058882==--

