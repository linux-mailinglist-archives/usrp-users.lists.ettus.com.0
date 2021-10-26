Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2681A43AA1D
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 04:12:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15518383CE7
	for <lists+usrp-users@lfdr.de>; Mon, 25 Oct 2021 22:12:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="1boymYkB";
	dkim-atps=neutral
Received: from resqmta-po-01v.sys.comcast.net (resqmta-po-01v.sys.comcast.net [96.114.154.160])
	by mm2.emwd.com (Postfix) with ESMTPS id 8BD1C38009D
	for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 22:11:52 -0400 (EDT)
Received: from resomta-po-18v.sys.comcast.net ([96.114.154.242])
	by resqmta-po-01v.sys.comcast.net with ESMTP
	id fBjwmDXWoKqmEfBwNmUSkW; Tue, 26 Oct 2021 02:11:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1635214311;
	bh=jnOpck3U5bC2FwyfGmKP2nBrpQeADyPqDA4qroA/YGc=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=1boymYkBYUUvhrrjeBavrCEaGIcODyAHCTIvgfg6lx05LU1kw2phr9Kwyx3qvCFj4
	 iUrKLkTRy4cO1kkVbIeRwauBBpSeUGB58QskH2vcaJztV9TfbalJawTrBB2u13nd6C
	 foD8L6/h3YmJK30fh2kILlkJavqVG/zgR3Sf4ofnVYaHsuiSgfQPnTUMtheY32xCnp
	 hz6jq25XxxhMRyQTDk+R6Vgf2+gb8bn3BmxUAquWSOc+/mbFGiur2IlEo8HsZqJGGK
	 rInK2EPdJWGPpfiSBWxp4X5wzsN/cX+7wNqstgtuuQ/HTyNTIKL9UDyh4Xe0nZ2d9C
	 hF6BrlvYBNoOQ==
Received: from [IPv6:2601:647:4700:284:9d34:5fea:76cf:eb90]
 ([IPv6:2601:647:4700:284:9d34:5fea:76cf:eb90])
	by resomta-po-18v.sys.comcast.net with ESMTPSA
	id fBwMmYwEfD5GufBwNmkClb; Tue, 26 Oct 2021 02:11:51 +0000
X-Xfinity-VMeta: sc=49.00;st=legit
To: usrp-users@lists.ettus.com
References: <42128c85-a3d7-4777-8524-23cbd5823524@Spark>
 <88176baf-365a-4d9b-ba20-cd6676fc6fce@Spark>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <ba1452e2-31b4-5aa3-2ef6-d41e87ace89f@comcast.net>
Date: Mon, 25 Oct 2021 19:11:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <88176baf-365a-4d9b-ba20-cd6676fc6fce@Spark>
Content-Language: en-US
Message-ID-Hash: RYSCIBIKIJKCLP5TWT6S7NIPHRWAKIEI
X-Message-ID-Hash: RYSCIBIKIJKCLP5TWT6S7NIPHRWAKIEI
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: b205 carrier signal
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RYSCIBIKIJKCLP5TWT6S7NIPHRWAKIEI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5983100539790216342=="

This is a multi-part message in MIME format.
--===============5983100539790216342==
Content-Type: multipart/alternative;
 boundary="------------ED82C517CCA3B728487AC21A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ED82C517CCA3B728487AC21A
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

32k is too low of a sample rate for the B205. Try something like 1 Msps 
to 10 Msps.

Ron

On 10/25/21 7:02 PM, Ernest Poletaev wrote:
> Hello,
>
> I'm trying to get clean carrier signal out of Ettus b205 using GNU 
> Radio (see top screenshot by the link).
>
> I have a few boards and TX signal I see on the scope is quite 
> different from expected sine wave (tried different sample rates but 
> results are the same) (middle screenshot).
>
> Do I need to set things differently on the GNU Radio or is it 
> limitation of the board?
>
> Some of the boards give even weirder output (bottom screenshot). Is it 
> broken?
>
> Screenshots: https://imgur.com/a/doA1Syv <https://imgur.com/a/doA1Syv>
>
> Best Regards,
> Ernest
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------ED82C517CCA3B728487AC21A
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p>32k is too low of a sample rate for the B205. Try something like
      1 Msps to 10 Msps.</p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 10/25/21 7:02 PM, Ernest Poletaev
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:88176baf-365a-4d9b-ba20-cd6676fc6fce@Spark">
      <meta http-equiv=3D"content-type" content=3D"text/html;
        charset=3Dwindows-1252">
      <title></title>
      <div name=3D"messageBodySection">
        <div dir=3D"auto">Hello,<br>
          <br>
          I'm trying to get clean carrier signal out of Ettus b205 using
          GNU Radio (see top screenshot by the link).<br>
          <br>
          I have a few boards and TX signal I see on the scope is quite
          different from expected sine wave (tried different sample
          rates but results are the same) (middle screenshot).<br>
          <br>
          Do I need to set things differently on the GNU Radio or is it
          limitation of the board?<br>
          <br>
          Some of the boards give even weirder output (bottom
          screenshot). Is it broken?<br>
          <br>
          Screenshots:=A0<a href=3D"https://imgur.com/a/doA1Syv"
            target=3D"_blank" moz-do-not-send=3D"true">https://imgur.com/=
a/doA1Syv</a><br>
        </div>
      </div>
      <div name=3D"messageSignatureSection"><br>
        <div class=3D"matchFont">
          <div dir=3D"auto">Best Regards,
            <div dir=3D"auto">Ernest</div>
          </div>
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

--------------ED82C517CCA3B728487AC21A--

--===============5983100539790216342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5983100539790216342==--
