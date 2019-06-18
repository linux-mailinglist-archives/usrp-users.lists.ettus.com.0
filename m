Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4606F49FA1
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 13:49:53 +0200 (CEST)
Received: from [::1] (port=53366 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdCcT-00059I-1J; Tue, 18 Jun 2019 07:49:45 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:36691)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ee13m1032@iith.ac.in>)
 id 1hdCcP-00050w-TL
 for usrp-users@lists.ettus.com; Tue, 18 Jun 2019 07:49:41 -0400
Received: by mail-ot1-f66.google.com with SMTP id r6so14027826oti.3
 for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2019 04:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iith.ac.in; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=gwu3SD/l3+rLQZx8tEhU8ONFUuL88j4CrS7OOirUaWU=;
 b=Y2Ir+wRMEzk2YjV1piAbSuqMCkHtqgJfC+LlIWDSCCFY2E90wxe7U2udqFR2iptRF9
 oGMhhm/k24DTGZlnS5Pkl/B2CafsdVg65KuisNTqPT3T1Z4K8UMK2mrJH+b+YoxFVJvx
 /Vc+TMYM0Ogj14a/NgMfn7Al68M6ihyysjCw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gwu3SD/l3+rLQZx8tEhU8ONFUuL88j4CrS7OOirUaWU=;
 b=jiaX6RGB+d3+pWE5lkj9Syo615idw9SvviQSI2Kza5PYaygdej6VlUvnX+O4Wc1RtT
 UwXQ19DZprXldSk/JdDQcP8M0Y1NwLXaXVW1W2wDlRttRoXTnBNhpLvrT5bNUQ0A7gqW
 XgCOihjlqS7z/dL+KNJ4X32jvW2gDg5676dOyVcelzeHsMXFcCIW69+KYOYLAKyGvGDj
 4iApZLA8dhWdDqC36XY7vZL6uNeWRLWx/rS5inX3adrM3Ozhzv/13kqYhDT9ctHgkzNf
 o3gnvTxb0U94EMq9rQV+iNNDyQg0kyGhhKEAB8L1PQNUfPNInAtouA7C8lYTca4Wvoia
 3tjg==
X-Gm-Message-State: APjAAAUoqnr74erPNzQL1zZk+pSej8rucDKBexpC4a5j21bPwPSTZonl
 ETF6JRqf9pa3mUtCsCqXrGHYXirwZwATdqX2xaG+DZGhCNo=
X-Google-Smtp-Source: APXvYqxH9DWeOT8b5fVoqLLWbGGZo68eC6M0rDAZUoeVbRZ0/SqlwMHef7itO7nP1w8Bqh2U2BpjJfRHVq0H1E6zXdI=
X-Received: by 2002:a05:6830:128e:: with SMTP id
 z14mr14482172otp.172.1560858539795; 
 Tue, 18 Jun 2019 04:48:59 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 18 Jun 2019 17:18:49 +0530
Message-ID: <CAEFPu364hymUhonvr9ijfbfUGkWzLiWy3iaY9wodP=ryHDY2hQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] UHD 3.14.1-rc1 Build failure
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Varala Sathish via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varala Sathish <ee13m1032@iith.ac.in>
Content-Type: multipart/mixed; boundary="===============4158744221131606805=="
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

--===============4158744221131606805==
Content-Type: multipart/alternative; boundary="000000000000cf3e96058b97b2da"

--000000000000cf3e96058b97b2da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,



I am  getting following failure when trying to build *UHD tests* for
3.14.1-rc1.



CMakeFiles/sph_send_test.dir/sph_send_test.cpp.o: In function
`test_sph_send_one_channel_one_packet_mode::test_method()':

sph_send_test.cpp:(.text+0x231): undefined reference to
`mock_zero_copy::mock_zero_copy(uhd::transport::vrt::if_packet_info_t::link=
_type_t,
unsigned long, unsigned long)'

CMakeFiles/sph_send_test.dir/sph_send_test.cpp.o: In function
`test_sph_send_one_channel_full_buffer_mode::test_method()':

sph_send_test.cpp:(.text+0x4681): undefined reference to
`mock_zero_copy::mock_zero_copy(uhd::transport::vrt::if_packet_info_t::link=
_type_t,
unsigned long, unsigned long)'

CMakeFiles/sph_send_test.dir/sph_send_test.cpp.o: In function
`mock_zero_copy::~mock_zero_copy()':

sph_send_test.cpp:(.text._ZN14mock_zero_copyD2Ev[_ZN14mock_zero_copyD5Ev]+0=
x3):
undefined reference to `vtable for mock_zero_copy'

CMakeFiles/sph_send_test.dir/sph_send_test.cpp.o: In function
`mock_zero_copy::~mock_zero_copy()':

sph_send_test.cpp:(.text._ZN14mock_zero_copyD0Ev[_ZN14mock_zero_copyD5Ev]+0=
x3):
undefined reference to `vtable for mock_zero_copy'

collect2: error: ld returned 1 exit status


The failure is arising  when Linking CXX executable for =E2=80=98sph_send_t=
est=E2=80=99


Following are the versions of the dependencies that are used for the build.

   - GCC 6.3.0
   - CMake =E2=80=93 3.10. 2
   - Boost 1.65.1
   - LibUSB 1.0
   - Python 2.7


Is this failure is happening because of Version mismatch of this components=
?

--000000000000cf3e96058b97b2da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;fo=
nt-size:11pt;font-family:Calibri,sans-serif">Hi all,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:11pt">=C2=A0</span></p=
>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">I am=C2=A0 getting following failure when=C2=A0=
<span style=3D"font-size:14.6667px">trying to build=C2=A0</span><b style=3D=
"font-size:14.6667px">UHD tests</b><span style=3D"font-size:14.6667px">=C2=
=A0for 3.14.1-rc1.</span><span style=3D"font-size:11pt">=C2=A0=C2=A0</span>=
</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">CMakeFiles/sph_send_test.dir/sph_send_test.=
cpp.o: In function
`test_sph_send_one_channel_one_packet_mode::test_method()&#39;:</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">sph_send_test.cpp:(.text+0x231): undefined =
reference to
`mock_zero_copy::mock_zero_copy(uhd::transport::vrt::if_packet_info_t::link=
_type_t,
unsigned long, unsigned long)&#39;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">CMakeFiles/sph_send_test.dir/sph_send_test.=
cpp.o: In function
`test_sph_send_one_channel_full_buffer_mode::test_method()&#39;:</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">sph_send_test.cpp:(.text+0x4681): undefined=
 reference to
`mock_zero_copy::mock_zero_copy(uhd::transport::vrt::if_packet_info_t::link=
_type_t,
unsigned long, unsigned long)&#39;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">CMakeFiles/sph_send_test.dir/sph_send_test.=
cpp.o: In function
`mock_zero_copy::~mock_zero_copy()&#39;:</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">sph_send_test.cpp:(.text._ZN14mock_zero_cop=
yD2Ev[_ZN14mock_zero_copyD5Ev]+0x3):
<span style=3D"background:yellow">undefined reference to
`vtable for mock_zero_copy&#39;</span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">CMakeFiles/sph_send_test.dir/sph_send_test.=
cpp.o: In function
`mock_zero_copy::~mock_zero_copy()&#39;:</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">sph_send_test.cpp:(.text._ZN14mock_zero_cop=
yD0Ev[_ZN14mock_zero_copyD5Ev]+0x3):
<span style=3D"background:yellow">undefined reference to
`vtable for mock_zero_copy&#39;</span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;;color:black">collect2: error: ld returned 1 exit status<=
/span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><br></p><p class=3D"MsoNormal" style=3D"margin:=
0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif">The failure=
 is arising=C2=A0 when=C2=A0<span style=3D"font-size:14.6667px">Linking CXX=
 executable for =E2=80=98sph_send_test=E2=80=99</span></p><p class=3D"MsoNo=
rmal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,s=
ans-serif"><span style=3D"font-size:11pt"><br></span></p><p class=3D"MsoNor=
mal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sa=
ns-serif"><span style=3D"font-size:11pt">Following are the versions of the =
dependencies that are used for the build.</span><br></p><ul type=3D"disc" s=
tyle=3D"margin-top:0in;margin-bottom:0in"><li class=3D"gmail-MsoListParagra=
ph" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,san=
s-serif">GCC 6.3.0</li><li class=3D"gmail-MsoListParagraph" style=3D"margin=
:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif">CMake =E2=
=80=93 3.10. 2</li><li class=3D"gmail-MsoListParagraph" style=3D"margin:0in=
 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif">Boost 1.65.1</=
li><li class=3D"gmail-MsoListParagraph" style=3D"margin:0in 0in 0.0001pt;fo=
nt-size:11pt;font-family:Calibri,sans-serif">LibUSB 1.0</li><li class=3D"gm=
ail-MsoListParagraph" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-=
family:Calibri,sans-serif">Python 2.7</li></ul><p class=3D"MsoNormal" style=
=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif">=
<br></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:1=
1pt;font-family:Calibri,sans-serif">Is this failure is happening because of=
 Version mismatch of this components?</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p></div>

--000000000000cf3e96058b97b2da--


--===============4158744221131606805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4158744221131606805==--

