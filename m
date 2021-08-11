Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0E43E8A27
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 08:17:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 624C4383B01
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 02:17:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="ydXvPUxB";
	dkim-atps=neutral
Received: from resqmta-po-08v.sys.comcast.net (resqmta-po-08v.sys.comcast.net [96.114.154.167])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B117383C5A
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 02:16:55 -0400 (EDT)
Received: from resomta-po-02v.sys.comcast.net ([96.114.154.226])
	by resqmta-po-08v.sys.comcast.net with ESMTP
	id DhWNmNkjcArcZDhXqmfgNU; Wed, 11 Aug 2021 06:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1628662614;
	bh=kDeLPoesuAhmVaMX7j/IOHCRwfu/PXG3CIVnHNW/OhY=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=ydXvPUxB+16pUUWy04MhBYjjhlsYOeQ6Aq8i3WSOK6j49nADQFimCxecfz7V0/jzH
	 YG3O1Ax5V87u06AP6ZBp0QodkEh3n24lumxQok8etTj+8OXBn1cIryUJ64RAHKX2HJ
	 ElNPWVKnbvZgY6bh3DW5p7Al03Q1q9aIGGmoM5/JmIWfUPPtpLdg2i3GadmUyeOnHx
	 c1+salYTdbzek4ZpF9+2hHviVwonq2sO4D0kIa3vEmlhSoUMHDMWBx1pEXy3RsbMSJ
	 rgb/sibiCuVRU/calg9qw017ouB+hMDxVaK5h5j5iYuudjxssxdivFCG1YKWnxVfff
	 YDwVjyHav/kiA==
Received: from [IPv6:2601:647:4700:284:a6b7:1676:a356:f12]
 ([IPv6:2601:647:4700:284:a6b7:1676:a356:f12])
	by resomta-po-02v.sys.comcast.net with ESMTPSA
	id DhXpmrdaUds8EDhXpmKGP9; Wed, 11 Aug 2021 06:16:53 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CACwKM9K-UMZ8kUPZ-FSV4anR1UgJiP0e67Uw6-gpgdPo2WCJeA@mail.gmail.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net>
Date: Tue, 10 Aug 2021 23:16:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CACwKM9K-UMZ8kUPZ-FSV4anR1UgJiP0e67Uw6-gpgdPo2WCJeA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: XCZQOIKIDDO2LVBVYWGXBI6FSB2JSERA
X-Message-ID-Hash: XCZQOIKIDDO2LVBVYWGXBI6FSB2JSERA
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XCZQOIKIDDO2LVBVYWGXBI6FSB2JSERA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4469812067742205553=="

This is a multi-part message in MIME format.
--===============4469812067742205553==
Content-Type: multipart/alternative;
 boundary="------------C6C8D270BFFACA72BFFB0793"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C6C8D270BFFACA72BFFB0793
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I have a patch that I've tested to work well. In UHD v4.0.0.0, add this=20
line of code:

diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp=20
b/host/lib/usrp/cores/rx_vita_core_3000.cpp
index 4b09f75fd..368ae8e0a 100644
--- a/host/lib/usrp/cores/rx_vita_core_3000.cpp
+++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp
@@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl : rx_vita_core_3000
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D uint32_t(=
(inst_stop) ? 1 : 0) << 28;
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D (inst_sam=
ps) ? stream_cmd.num_samps : ((inst_stop)=20
? 0 : 1);

+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D str=
eam_cmd.stream_mode
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D=20
stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
+
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // issue the stream com=
mand
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _iface->poke32(REG_CTRL=
_CMD, cmd_word);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const uint64_t ticks =3D

Ron

On 8/10/21 10:48 PM, Paul Atreides wrote:
> what is the current guidance until this bug is fixed? i've recompiled=20
> UHD 3 times now.
> UHD4.0
> UHD4.1
> master
> all of them have the same issue, if i get even one overflow in=20
> gnuradio the screen locks up, in rx_benchmark/rx_samples_to_file the=20
> program terminates early.
>
> when will this be fixed?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------C6C8D270BFFACA72BFFB0793
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>I have a patch that I've tested to work well. In UHD v4.0.0.0,
      add this line of code:<br>
    </p>
    <p>diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
      b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      index 4b09f75fd..368ae8e0a 100644<br>
      --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl :
      rx_vita_core_3000<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D uint=
32_t((inst_stop) ? 1 : 0) &lt;&lt; 28;<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D (ins=
t_samps) ? stream_cmd.num_samps :
      ((inst_stop) ? 0 : 1);<br>
      =C2=A0<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D=
 stream_cmd.stream_mode<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D
      stream_cmd_t::STREAM_MODE_START_CONTINUOUS;<br>
      +<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // issue the strea=
m command<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _iface-&gt;poke32(=
REG_CTRL_CMD, cmd_word);<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const uint64_t tic=
ks =3D<br>
    </p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/10/21 10:48 PM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CACwKM9K-UMZ8kUPZ-FSV4anR1UgJiP0e67Uw6-gpgdPo2WCJeA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>what is the current guidance until this bug is fixed?
              i've recompiled UHD 3 times now. <br>
            </div>
            UHD4.0<br>
          </div>
          UHD4.1<br>
        </div>
        <div>master</div>
        <div>all of them have the same issue, if i get even one overflow
          in gnuradio the screen locks up, in
          rx_benchmark/rx_samples_to_file the program terminates early.
          <br>
        </div>
        <div><br>
        </div>
        <div>when will this be fixed?<br>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------C6C8D270BFFACA72BFFB0793--

--===============4469812067742205553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4469812067742205553==--
