Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D48360B613
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 20:47:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BABD3383BEC
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 14:47:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666637264; bh=8GjnyG7Vb+t4qJpyk19FZ600lhMVB+mcKHSpsftApbA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Gly6v/GH+gslOpf+SWGopsKLBceh6y2iQJzhsTQIdMYTX+P2xFiwpuhj8gIYxaQOJ
	 wVPkKiUA5ZJDjxGF7G+BXFK/YORaaBR9wkIArd6M02kjSth03gpM6rEA/yx4vHSskO
	 TnZdGmPN4LaXmSfiRlFM1iuw8TrGB65ErbtzcDDehhjUOQzpTuDNfsDUU4qMy7jHQA
	 xEaxQZtF+RjeCiQfzBS9gGX7IArHsusIZu6jcUQyeBU+ln2wvL9BGiwFFpe/5zFHAl
	 DaLJ1nrD8O2DsETmKhcLVjGAO0Y8c0vBrLN+TAheyuAVyzPodeJcqH5xZ5c8wOTtY4
	 AHgNbpqbqn5CQ==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E25DF380787
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 14:46:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZUJ0f7wJ";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id a24so6138715qto.10
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 11:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nn1z19v4fZh0Jbcp/Fh5mHPxEtnejcOtErLaQbqIu3Y=;
        b=ZUJ0f7wJ3SULTTc8DpE6m27sermfJ8rL/755fwKH2vg5NuxLhb+InhkXim4rBPB7v/
         NwBjtTA3RHqNdFRBBfMyH3HIW9eUHZAaf5Sac8FKN9q1wbEY++0ll91y56IAWqspo4i5
         0PpmmNv3GyeklRrBtB1c3Q6uSiFBIy4zIlrhkRxUkvmn6hfWYWnUE5iBLChkAF6WJnMw
         0yHhVas1y63f03YdMcO8vAAitP8b/NGB0iUBmcIdtyIxRtCUCYpiyqIkxf7udd4cFtwB
         8sAIb6SfN7hgYuAUmwHfzwHe1OWinPMdfNw9a9G6OTZV3Ym/Sz+8ryL9/KnaAvmc5BOU
         TsAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nn1z19v4fZh0Jbcp/Fh5mHPxEtnejcOtErLaQbqIu3Y=;
        b=fcyEwLsRmnxrOoashVv0zYi3oAF3Byt/iIvtjX6Mp8sR/oiROOg2OgbX0w298qA12x
         SFlOTSnxmBnuWLVLW3I/nXdS5Bx7mmALnAxqaJlUJghYdX7EPbnXjb/NZTru32i8tCGN
         NIjwqQHJXMbNudni444WAf/PadYO+4lSuRgZmIs+Xx4TxzQFou6ACLyVOyks7JxfKDFI
         a8yt/NrulwlggKieC9fSzk0c24BhO3/nxHSKFUURjoQoFXAGAEu2YU2E+oNHSQ+9yYQi
         UjfH/OdbR2pVewAK3levA1sWf+Gf4cE7K4108jlnR8bTpXVEtD1icP70CGgbXCS52thH
         YSpg==
X-Gm-Message-State: ACrzQf01e4T/i/1Id2LUo+pDl6a746DcHeITIsTIh2txNcP04uagtGzK
	Lwn6s+c44hKS3uYVi187IV8=
X-Google-Smtp-Source: AMsMyM6gDRFe/L5kn2gjf8xvwK1CCKXxFTavE4oqoHK5AM+Wy23M97RlZsS0whYfw9alAiHnCoCtuw==
X-Received: by 2002:ac8:5c93:0:b0:39c:c88b:4897 with SMTP id r19-20020ac85c93000000b0039cc88b4897mr28410538qta.6.1666637189341;
        Mon, 24 Oct 2022 11:46:29 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id j22-20020a05620a411600b006eef13ef4c8sm437492qko.94.2022.10.24.11.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 11:46:29 -0700 (PDT)
Message-ID: <e828262f-8154-30ec-9251-98e598ecd712@gmail.com>
Date: Mon, 24 Oct 2022 14:46:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: "White, Joshua J" <jjwhite@RiversideResearch.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN0P110MB1015C5E6363AAD78C7D303A7B12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
 <2417c33c-83d2-0cff-85c7-c34bab60c85b@gmail.com>
 <BN0P110MB1015F22E32FF8751559CC6F2B12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
 <83daad56-0ef9-32d0-2760-902138dd9a48@gmail.com>
 <BN0P110MB1015656206E11898E25D522CB12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN0P110MB1015656206E11898E25D522CB12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: 566BIXIVOJT2MZN4INMF4WQUHWBQ4HVZ
X-Message-ID-Hash: 566BIXIVOJT2MZN4INMF4WQUHWBQ4HVZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat number mismatch error with E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/566BIXIVOJT2MZN4INMF4WQUHWBQ4HVZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1441470888635987424=="

This is a multi-part message in MIME format.
--===============1441470888635987424==
Content-Type: multipart/alternative;
 boundary="------------DCbbf6nPkuJ4VPnghunR6fbe"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DCbbf6nPkuJ4VPnghunR6fbe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-24 14:43, White, Joshua J wrote:
>
> How should I go about fixing it?
>
> Very respectfully,
>
> **
>
> *Joshua White*
>
> Precision Timing Systems Engineer
>
> Engineering & Support Solutions Directorate
>
> www.riversideresearch.org <http://www.riversideresearch.org/>
>
> T: 937.986.3153 | F: 937.431.3811
>
It looks like on the host-side, you're using a HEAD version of UHD,=20
rather than a tagged version.

The current "HEAD" looks for a different compat number.

I'd recommend building from a tagged release.=C2=A0 This came to light af=
ter=20
I chatted briefly with Ettus R&D.

So:

git checkout v4.3.0.0

And rebuild on the host side






> This e-mail message, including any attachments, is for the sole use of=20
> the intended recipient(s) and may contain proprietary, confidential or=20
> privileged information or otherwise be protected by law. Any=20
> unauthorized review, use, disclosure or distribution is prohibited. If=20
> you are not the intended recipient, please notify the sender and=20
> destroy all copies and the original message.
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, October 24, 2022 2:18 PM
> *To:* White, Joshua J <jjwhite@RiversideResearch.org>;=20
> usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: MPM compat number mismatch error with E=
312
>
> On 2022-10-24 14:14, White, Joshua J wrote:
>
>     Marcus,
>
>     This is the response I get from it.
>
>     root@ni-e31x-3248EB5:~# uhd_config_info --version
>
>     UHD 4.3.0.0-0-g1f8fd345
>
>     Very respectfully,
>
>     **
>
>     *Joshua White*
>
>     Precision Timing Systems Engineer
>
>     Engineering & Support Solutions Directorate
>
>     www.riversideresearch.org <http://www.riversideresearch.org/>
>
>     T: 937.986.3153 | F: 937.431.3811
>
> Thanks.
>
> This looks like a possible packaging error, then.
>
>
>
>
>
>     This e-mail message, including any attachments, is for the sole
>     use of the intended recipient(s) and may contain proprietary,
>     confidential or privileged information or otherwise be protected
>     by law. Any unauthorized review, use, disclosure or distribution
>     is prohibited. If you are not the intended recipient, please
>     notify the sender and destroy all copies and the original message.
>
>     *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Monday, October 24, 2022 2:10 PM
>     *To:* usrp-users@lists.ettus.com
>     *Subject:* [USRP-users] Re: MPM compat number mismatch error with E=
312
>
>     On 2022-10-24 12:55, White, Joshua J wrote:
>
>         All,
>
>         My company recently purchased an E312, which I have been
>         attempting to set up and test. I have UHD 4.3.0.0-6-g5aa6bc44
>         on my host PC and downloaded and flashed the most recent sdimg
>         from https://files.ettus.com/binaries/cache/e3xx/ onto the
>         E312, which is UHD 4.3.0.0-0-g1f8fd345. Running uhd_usrp_probe
>         on the E312 itself over an SSH connection works as expected,
>         but when I try to run uhd_usrp_probe from the host PC, I get
>         the following error:
>
>         jjwhite@5cd01378zc:~$ uhd_usrp_probe
>
>         [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
>         UHD_4.3.0.0-6-g5aa6bc44
>
>         [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>         mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=
=3D3248EB5,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.1=
68.1.174
>
>         [INFO] [MPM.main] Launching USRP/MPM, version: 4.3.0.0-g1f8fd34=
5
>
>         [INFO] [MPM.main] Spawning RPC process...
>
>         [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility chec=
k!
>
>         [INFO] [MPM.PeriphManager] Device serial number: 3248EB5
>
>         [WARNING] [MPM.PeriphManager] Found more EEPROM paths than
>         daughterboards. Ignoring some of them.
>
>         [INFO] [MPM.RPCServer] RPC server ready!
>
>         [INFO] [MPM.RPCServer] Spawning watchdog task...
>
>         [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.3
>         Actual: 4.2. Please update the version of MPM on your USRP devi=
ce.
>
>         Error: RuntimeError: MPM minor compat number mismatch.
>         Expected: 4.3 Actual: 4.2. Please update the version of MPM on
>         your USRP device.
>
>         Thinking it might be related to the FPGA image, I attempted to
>         update it using uhd_image_loader, which produced a similar erro=
r:
>
>         jjwhite@5cd01378zc:~$ uhd_image_loader --args
>         type=3De3xx,addr=3D192.168.1.174
>
>         [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
>         UHD_4.3.0.0-6-g5aa6bc44
>
>         [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>         mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=
=3D3248EB5,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,skip_init=3D=
1
>
>         [INFO] [MPMD] Claimed device without full initialization.
>
>         [INFO] [MPMD IMAGE LOADER] Starting update. This may take a whi=
le.
>
>         [INFO] [MPM.PeriphManager] Installing component `fpga'
>
>         [INFO] [MPM.PeriphManager] Installing component `dts'
>
>         [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
>         [INFO] [MPM.RPCServer] Resetting peripheral manager.
>
>         [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility chec=
k!
>
>         [INFO] [MPM.PeriphManager] Device serial number: 3248EB5
>
>         [WARNING] [MPM.PeriphManager] Found more EEPROM paths than
>         daughterboards. Ignoring some of them.
>
>         [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>         mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=
=3D3248EB5,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.1=
68.1.174,find_all=3D1
>
>         [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was
>         never fully initialized!
>
>         [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.3
>         Actual: 4.2. Please update the version of MPM on your USRP devi=
ce.
>
>         Error: RuntimeError: MPM minor compat number mismatch.
>         Expected: 4.3 Actual: 4.2. Please update the version of MPM on
>         your USRP device.
>
>         Is there a reason that my host PC thinks the E312 has MPM
>         v.4.2 installed instead of 4.3? Does the UHD 4.3 image for the
>         E312 come with MPM 4.2? If so, is there a way to update it? Is
>         there some other reason for the error, and if so, is there a
>         way to correct it? Thank you in advance for your time and
>         assistance.
>
>         Very respectfully,
>
>     Josh:
>
>     Could you get on to the E312 itself, and:
>
>     uhd_config_info --version
>
>     And share with us what it says?
>

--------------DCbbf6nPkuJ4VPnghunR6fbe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-24 14:43, White, Joshua J
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN0P110MB1015656206E11898E25D522CB12E9@BN0P110MB1015.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">How should I go about fixing it?<o:p></o:p=
></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Very
              respectfully,<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><b><span style=3D"color:#1F497D"><o:p>=C2=
=A0</o:p></span></b></p>
          <p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">Joshua
                White<o:p></o:p></span></b></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Precision
              Timing Systems Engineer<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Engineerin=
g
              &amp; Support Solutions Directorate<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><a
                href=3D"http://www.riversideresearch.org/"
                moz-do-not-send=3D"true"><span style=3D"color:blue">www.r=
iversideresearch.org</span></a>
              <o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">T:
              937.986.3153 | F: 937.431.3811</span></p>
        </div>
      </div>
    </blockquote>
    It looks like on the host-side, you're using a HEAD version of UHD,
    rather than a tagged version.<br>
    <br>
    The current "HEAD" looks for a different compat number.<br>
    <br>
    I'd recommend building from a tagged release.=C2=A0 This came to ligh=
t
    after I chatted briefly with Ettus R&amp;D.<br>
    <br>
    So:<br>
    <br>
    git checkout v4.3.0.0<br>
    <br>
    And rebuild on the host side<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN0P110MB1015656206E11898E25D522CB12E9@BN0P110MB1015.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p=
></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black"><o:p>=C2=A0<=
/o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:9.0pt;color:#1F497D">This e-mail message=
,
              including any attachments, is for the sole use of the
              intended recipient(s) and may contain proprietary,
              confidential or privileged information or otherwise be
              protected by law. Any unauthorized review, use, disclosure
              or distribution is prohibited. If you are not the intended
              recipient, please notify the sender and destroy all copies
              and the original message.</span><span
              style=3D"color:#1F497D"><o:p></o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Monday, October 24, 2022 2:18 PM<br>
              <b>To:</b> White, Joshua J
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jjwhite@R=
iversideResearch.org">&lt;jjwhite@RiversideResearch.org&gt;</a>;
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Re: MPM compat number
              mismatch error with E312<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-10-24 14:14, White, Joshua J
            wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Marcus,<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">This is the response I get from it.<o:p>=
</o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">root@ni-e31x-3248EB5:~# uhd_config_info
            --version<o:p></o:p></p>
          <p class=3D"MsoNormal">UHD 4.3.0.0-0-g1f8fd345<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Very
                respectfully,</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">=C2=A0=
</span></b><o:p></o:p></p>
            <p class=3D"MsoNormal"><b><span style=3D"color:#1F497D">Joshu=
a
                  White</span></b><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Precisio=
n
                Timing Systems Engineer</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Engineer=
ing
                &amp; Support Solutions Directorate</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><a
                  href=3D"http://www.riversideresearch.org/"
                  moz-do-not-send=3D"true"><span style=3D"color:blue">www=
.riversideresearch.org</span></a>
              </span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D">T:
                937.986.3153 | F: 937.431.3811</span><o:p></o:p></p>
          </div>
        </blockquote>
        <p class=3D"MsoNormal">Thanks.<br>
          <br>
          This looks like a possible packaging error, then.<br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <o:p></o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <p class=3D"MsoNormal"><span style=3D"color:black">=C2=A0</sp=
an><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:9.0pt;color:#1F497D">This e-mail
                message, including any attachments, is for the sole use
                of the intended recipient(s) and may contain
                proprietary, confidential or privileged information or
                otherwise be protected by law. Any unauthorized review,
                use, disclosure or distribution is prohibited. If you
                are not the intended recipient, please notify the sender
                and destroy all copies and the original message.</span><o=
:p></o:p></p>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech <a
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&gt=
;</a>
                <br>
                <b>Sent:</b> Monday, October 24, 2022 2:10 PM<br>
                <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: MPM compat number
                mismatch error with E312<o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">On 2022-10-24 12:55, White, Joshua J
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">All,<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">My company recently purchased an E312,
              which I have been attempting to set up and test. I have
              UHD 4.3.0.0-6-g5aa6bc44 on my host PC and downloaded and
              flashed the most recent sdimg from <a
                href=3D"https://files.ettus.com/binaries/cache/e3xx/"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://files.ettus.com/binaries/cache/e3xx/</a>
              onto the E312, which is UHD 4.3.0.0-0-g1f8fd345. Running
              uhd_usrp_probe on the E312 itself over an SSH connection
              works as expected, but when I try to run uhd_usrp_probe
              from the host PC, I get the following error:<br>
              <br>
              jjwhite@5cd01378zc:~$ uhd_usrp_probe<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version
              11.2.0; Boost_107400; UHD_4.3.0.0-6-g5aa6bc44<o:p></o:p></p=
>
            <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s)
              in parallel with args:
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.1.174<o=
:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.main] Launching USRP/MPM,
              version: 4.3.0.0-g1f8fd345<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.main] Spawning RPC
              process...<o:p></o:p></p>
            <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Skipping
              HW/SW compatibility check!<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Device
              serial number: 3248EB5<o:p></o:p></p>
            <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Found
              more EEPROM paths than daughterboards. Ignoring some of
              them.<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.RPCServer] RPC server
              ready!<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.RPCServer] Spawning
              watchdog task...<o:p></o:p></p>
            <p class=3D"MsoNormal">[ERROR] [MPMD] MPM minor compat number
              mismatch. Expected: 4.3 Actual: 4.2. Please update the
              version of MPM on your USRP device.<o:p></o:p></p>
            <p class=3D"MsoNormal">Error: RuntimeError: MPM minor compat
              number mismatch. Expected: 4.3 Actual: 4.2. Please update
              the version of MPM on your USRP device.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Thinking it might be related to the
              FPGA image, I attempted to update it using
              uhd_image_loader, which produced a similar error:<br>
              <br>
              jjwhite@5cd01378zc:~$ uhd_image_loader --args
              type=3De3xx,addr=3D192.168.1.174<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version
              11.2.0; Boost_107400; UHD_4.3.0.0-6-g5aa6bc44<o:p></o:p></p=
>
            <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s)
              in parallel with args:
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,skip_init=3D1<o:p></o:=
p></p>
            <p class=3D"MsoNormal">[INFO] [MPMD] Claimed device without
              full initialization.<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Starting
              update. This may take a while.<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installing
              component `fpga'<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installing
              component `dts'<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Update
              component function succeeded.<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.RPCServer] Resetting
              peripheral manager.<o:p></o:p></p>
            <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Skipping
              HW/SW compatibility check!<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Device
              serial number: 3248EB5<o:p></o:p></p>
            <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Found
              more EEPROM paths than daughterboards. Ignoring some of
              them.<o:p></o:p></p>
            <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s)
              in parallel with args:
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.1.174,f=
ind_all=3D1<o:p></o:p></p>
            <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Cannot
              run deinit(), device was never fully initialized!<o:p></o:p=
></p>
            <p class=3D"MsoNormal">[ERROR] [MPMD] MPM minor compat number
              mismatch. Expected: 4.3 Actual: 4.2. Please update the
              version of MPM on your USRP device.<o:p></o:p></p>
            <p class=3D"MsoNormal">Error: RuntimeError: MPM minor compat
              number mismatch. Expected: 4.3 Actual: 4.2. Please update
              the version of MPM on your USRP device.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Is there a reason that my host PC
              thinks the E312 has MPM v.4.2 installed instead of 4.3?
              Does the UHD 4.3 image for the E312 come with MPM 4.2? If
              so, is there a way to update it? Is there some other
              reason for the error, and if so, is there a way to correct
              it? Thank you in advance for your time and assistance.<o:p>=
</o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Very respectfully,<o:p></o:p></p>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Josh:<br>
            <br>
            Could you get on to the E312 itself, and:<br>
            <br>
            uhd_config_info --version<br>
            <br>
            And share with us what it says?<o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------DCbbf6nPkuJ4VPnghunR6fbe--

--===============1441470888635987424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1441470888635987424==--
