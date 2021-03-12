Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id 74042338F59
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 15:04:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E644383C13
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 09:04:09 -0500 (EST)
Received: from resqmta-po-09v.sys.comcast.net (resqmta-po-09v.sys.comcast.net [96.114.154.168])
	by mm2.emwd.com (Postfix) with ESMTPS id CFCAE383AFB
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 09:03:55 -0500 (EST)
Received: from resomta-po-09v.sys.comcast.net ([96.114.154.233])
	by resqmta-po-09v.sys.comcast.net with ESMTP
	id KiHqlYDot6cSdKiOQldVHC; Fri, 12 Mar 2021 14:03:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1615557834;
	bh=qhkxDaRuXwoOSGQ5GGuOtJemP3xJRZ6A6r22LOqvyX4=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=CJ/t+4W7ASklwH4WSFpoz4MC8ecWGSIu0WnXmNudqKaN4kl82Q3AH/5kw/X1+8u30
	 kFVC1jlcMWEKSYHDENy6Mew4GyaCtvlhTbYUKP8zyBzDLfPKIDOSniWeiaNqRJdSX6
	 Ae/xAqBxdnklnFLVCnWFMTzIzZWTYlH0BF95Jbw1MA+TaG+Nf6bgQzHPtuFfMS3tQm
	 eRJtRN0ytTvwf+s0Z1wN3Z+3WOb61bFZCJGPseyLGJ71HanN/citFiJ21HYAtbxuII
	 7Zm7G5NLcHCmEnnqDszLIPJNcRZfrMhfnLbRwwah6VOLMblINA9nnlr6CdIy7UfXgB
	 oHEOt9UL8sZPw==
Received: from [IPv6:2601:647:4700:284:582a:eca:fa0e:e434]
 ([IPv6:2601:647:4700:284:582a:eca:fa0e:e434])
	by resomta-po-09v.sys.comcast.net with ESMTPSA
	id KiOPlLPJQDxZcKiOPlzjdm; Fri, 12 Mar 2021 14:03:54 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <4f926d9528d3498293db378bed26308f@external.thalesgroup.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <566afcea-f9c3-5dfd-538d-ecbd16e6fb7c@comcast.net>
Date: Fri, 12 Mar 2021 06:03:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4f926d9528d3498293db378bed26308f@external.thalesgroup.com>
Content-Language: en-US
Message-ID-Hash: 5BLTFRZNSOKT2R3A4CPNWPTNZJC5OZIY
X-Message-ID-Hash: 5BLTFRZNSOKT2R3A4CPNWPTNZJC5OZIY
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: import error gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5BLTFRZNSOKT2R3A4CPNWPTNZJC5OZIY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1536021878500446229=="

This is a multi-part message in MIME format.
--===============1536021878500446229==
Content-Type: multipart/alternative;
 boundary="------------8BD81E99D90F9D318D06418C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8BD81E99D90F9D318D06418C
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

You're probably missing the libsndfile dependency.

sudo apt-get install libsndfile1-dev

And then rebuild GNU Radio (and OOT's).

Ron

On 3/12/21 05:49, COURANT Frederique - Contractor via USRP-users wrote:
>
> Hi Users,
>
> When I try to run my flow graph I have this error :
>
> from .blocks_python import *
>
> ImportError: 
> /usr/local/lib/python3/dist-packages/gnuradio/blocks/-blocks_python.cpython-38-x86_64-linux-gnu.so 
> : undefined symbol: 
> _/ZN2gr6blocks12wavfile/_sink4makeEPKcijNS0_16wavfile_format_tENS-0_19wavfile_subformat_tEb
>
> Someone has solutions for resolve this problem please ?
>
> I work with UHD4.0 and gnuradio3.9
>
> Thanks.
>
> Best regards.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------8BD81E99D90F9D318D06418C
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p>You're probably missing the libsndfile dependency.</p>
    <p>sudo apt-get install libsndfile1-dev</p>
    <p>And then rebuild GNU Radio (and OOT's).</p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 3/12/21 05:49, COURANT Frederique -
      Contractor via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:4f926d9528d3498293db378bed26308f@external.thalesgroup.c=
om">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi Users,<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">When I try to run my
            flow graph I have this error :<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">from .blocks_python
            import *<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">ImportError:
/usr/local/lib/python3/dist-packages/gnuradio/blocks/-blocks_python.cpyth=
on-38-x86_64-linux-gnu.so
            : undefined symbol: _<i>ZN2gr6blocks12wavfile</i>_sink4makeEP=
KcijNS0_16wavfile_format_tENS-0_19wavfile_subformat_tEb<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Someone has solutions
            for resolve this problem please ?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I work with UHD4.0 an=
d
            gnuradio3.9<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks.<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards.<o:p></o=
:p></span></p>
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

--------------8BD81E99D90F9D318D06418C--

--===============1536021878500446229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1536021878500446229==--
