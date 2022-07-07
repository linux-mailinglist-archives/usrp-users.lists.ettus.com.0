Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A492F56A35E
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 15:21:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CDAB638436F
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 09:21:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657200110; bh=OkcMqJh41naS3kucoYsCaakapH/Fu7xfF6ajeaDLgp0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EeZJT6P7vY1TsTL6WdKdtg7RAKXW4MGljonG1ZNY+HVPOFXSDYqnZRY533H1G1XsF
	 Jq20vkRYWXr6nYwryoQeh5dDBMz19pDSJCpOvIA38aTvcdaTy65bdO/bEC9tYq/IaT
	 p7cKyvuqtOY12pVe1w1VIJ91zXS6tDnzkRQ07MWk2mgdi+cefERM2rM09a4f8y4wU8
	 C14BRSRLyNOJPTGO8Et7eD8ZAgucEkA3Hqo3eZR3tWoVVzNdToBBkNb2o/zIrrSeTx
	 mrUaVJzpEsByZyqCae3hR3dc1i/WWurtmnIO1F9tD7c/T1qoyaPU2v63hnkCgIrnWX
	 8X9p0d+qOLITA==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 909413841BA
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 09:20:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D6RpSzDw";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id c20so342124qtw.8
        for <usrp-users@lists.ettus.com>; Thu, 07 Jul 2022 06:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=s8+tAT4JAmB+jhSjQccOVv1yQV4karMQqJ65aN77FR4=;
        b=D6RpSzDwXps/k94jhU7oSb/glOfRyfx1cL7pRnGgWCNnvyB/C3bNclrOdHhS8reAJf
         7/tUeuvm4KuP0zMFLJRVR1BrPMVEJtfx7nCM0l7IsS4b5pKYTie07C6lily2/A8IoDOG
         yGeXgeV3GHeNNXrv9u7GxQ1v3X2kbNF5qR0MY8/mj2wxQAkEzKoJeQYD0Z0VqMZ9aSEm
         xiNdM2arUc5Ny7YWyUfoGqk8Zktw4xpQ+kvd23mN2l7p+kq5dozCoviJW2aSydZ7U3Ic
         jLMLBTbpJR5GUdAKnaBrpBT78gv6lShwkNR71H0q5Is1O/mC9gGZxV22NvBwUL7utY3n
         yDcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=s8+tAT4JAmB+jhSjQccOVv1yQV4karMQqJ65aN77FR4=;
        b=dpuKDMnr1OWEYVQuAU/IGzOMCxjotctBhHgIC3us3gcousnnnyApFUQmeMuR8ox/1F
         no3jKh9AV/C9VsJmk8NRUaOLSirE1T/+s11QnkGgk//98K4ORw1JuX21W9jdLpG4qgD8
         3qQteOY7LJZyuTXkautM1EHkS0F8wwbl5FrZ5hjjovUfphkGS5D4Y8F0dqDRQMaNDwaL
         pgNmwUaW5WxSvXpUBsExNSj445ckK0UN1D9gRPk/qHV7LI0HssXZSlX7iH1mFWbWbN7w
         MH58Sx2a6c9OaW3EgaR1mSt6amFg7sN83L1iyFjWuflLGyiQd8O/FNPabcJvxoZ17IxT
         QBcw==
X-Gm-Message-State: AJIora/CiPfBiCVCoJ2+8A4edMSFtAQcfrZSmT09IeO5fOmkIQ+FCzFW
	pDJ3dkFNgR0M02EfGjzR2P1PO72sObM=
X-Google-Smtp-Source: AGRyM1tdxoF1zEoOkS6wbG3rI5LMvLHQkxoivHMlV8/+ezA1JD/Jph1JJiVDrQyCw+JYc1VRPotWDg==
X-Received: by 2002:a05:6214:e84:b0:470:3e94:a85c with SMTP id hf4-20020a0562140e8400b004703e94a85cmr40873368qvb.11.1657200006520;
        Thu, 07 Jul 2022 06:20:06 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id a13-20020ac8610d000000b0031e9b496cd4sm879757qtm.11.2022.07.07.06.20.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 06:20:06 -0700 (PDT)
Message-ID: <dec2643c-7f3e-9ac8-fc4e-4d35d2088b85@gmail.com>
Date: Thu, 7 Jul 2022 09:20:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <E1188D158AA7A048AF99B6A05DA3D629DFE95889@SPROMMAIL03.spengtes.space>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D629DFE95889@SPROMMAIL03.spengtes.space>
Message-ID-Hash: 37CL3A5EC6KLEF6LLMRVF7FUVMGH7YAN
X-Message-ID-Hash: 37CL3A5EC6KLEF6LLMRVF7FUVMGH7YAN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: request on ettus usrp-x310 and ubx-160
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/37CL3A5EC6KLEF6LLMRVF7FUVMGH7YAN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7042072430600780965=="

This is a multi-part message in MIME format.
--===============7042072430600780965==
Content-Type: multipart/alternative;
 boundary="------------IRcgGP6euZk3U4anb0GeRrA7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------IRcgGP6euZk3U4anb0GeRrA7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-07 05:51, STEFANI, Maurizio (External) via USRP-users wrote:
>
> HI,
>
> I need to program the ubx-160 via FPGA using my VHDL code.
>
> Basically the UBX-160 is managed by a PLD but I have not the data=20
> format and protocol to be used.
>
> Is there someone can help me with these info about the format to=20
> program the ubx?
>
> Thank you in advance
>
> Maurizo stefani
>
Because programming of the synthesizers, RF switches, and=20
variable-attenuators is rather complicated and highly "procedural", all=20
of that is done in host
 =C2=A0 software.=C2=A0 The USRPs have always had the doctrine that the=20
FPGA/motherboard doesn't really "know" anything about the daugtercards,=20
but simply
 =C2=A0 facilitates "register" writes/reads via SPI and I2C for the host=20
software--the FPGA is "dumb" in this respect.

Programming the UBX-160 may require not only a dozen or more I2C/SPI (I=20
don't recall off the top of my head whether this card is all-SPI or=20
all-I2C or a mixture)
 =C2=A0 reads/writes, but also a bunch of *calculations* to help decide w=
hat=20
to write into those registers.=C2=A0 This is why it is typically done on =
the=20
host.



--------------IRcgGP6euZk3U4anb0GeRrA7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-07 05:51, STEFANI, Maurizio
      (External) via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:E1188D158AA7A048AF99B6A05DA3D629DFE95889@SPROMMAIL03.spengtes=
.space">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I need to program the
            ubx-160 via FPGA using my VHDL code.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Basically the UBX-160=
 is
            managed by a PLD but I have not the data format and protocol
            to be used.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Is there someone can
            help me with these info about the format to program the ubx?<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizo stefani<o:p><=
/o:p></span></p>
      </div>
    </blockquote>
    Because programming of the synthesizers, RF switches, and
    variable-attenuators is rather complicated and highly "procedural",
    all of that is done in host<br>
    =C2=A0 software.=C2=A0 The USRPs have always had the doctrine that th=
e
    FPGA/motherboard doesn't really "know" anything about the
    daugtercards, but simply <br>
    =C2=A0 facilitates "register" writes/reads via SPI and I2C for the ho=
st
    software--the FPGA is "dumb" in this respect.<br>
    <br>
    Programming the UBX-160 may require not only a dozen or more I2C/SPI
    (I don't recall off the top of my head whether this card is all-SPI
    or all-I2C or a mixture)<br>
    =C2=A0 reads/writes, but also a bunch of *calculations* to help decid=
e
    what to write into those registers.=C2=A0 This is why it is typically
    done on the host.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------IRcgGP6euZk3U4anb0GeRrA7--

--===============7042072430600780965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7042072430600780965==--
