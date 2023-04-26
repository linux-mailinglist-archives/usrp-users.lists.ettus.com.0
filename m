Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 886556EFDF9
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 01:22:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9AB83384060
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 19:22:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682551353; bh=KgkJ0I4b/cfWA2EOkmRAALtwDLnAElXi32IWBv9nMUk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=P8CPD0xUwZ6nS8t836H8O+WhfB/H3wDVmq5B4TBPnXyY9zOgv5wnvIDZrsMg9QAOT
	 RsLhfwhKXEgPW2G+4fnghK7EZAh0wY/QZ8ETl2WBZS8a5oq3lMsBMFpZBtgBUxv84M
	 XSZMa6qDse21b7HFpG2ZDHOo5iAjip5TvcFbwC5ZWQ7Ff+K8BcTBysnonavdygxuez
	 4NvOzejMbveh8rMmlvIYm+ar5bmZBQlGrT1EdmQcQrolExU1kq1AenVz3nyHH8liZF
	 dqwG/Lewo0ccUgXNvy3PqOUT4JrEIc3UyLLSZVt/F4MFqpWAyJ4aF8i/ZXl/NQ0KZS
	 iy3NAsJC84CUw==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id B1753380D25
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 19:21:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GyaK/guh";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-74e13e46cb9so391060185a.1
        for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 16:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682551312; x=1685143312;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ew+r0wR2/49CwpGe5wo2/JGHnn0lxVgQ595bOly6moM=;
        b=GyaK/guh2hOVu8Ht4Y5bkVi/tzlEujehpmh+CqpmzmWvHBJRwgynQY1MUuUaixAjck
         ievyjYUYY3FoYgxl+cC8nD2+P0bR3RpaEVSV3fjajolE6uq+uqi4l9GLGrAdSz6wDmW5
         yw5ztHg0eG6H2tY3ADdi1l+PonRs9UOq2PvzHbDrfns8BFTOTGRA5u0z4j+gsmpWkL3Y
         ApVjUVGMIY7vGBBYj6kFae21N+X2cy2DXzSFxXPhpFzwEccxSkYDSRRVD+0fEkmLd1YJ
         izRhfMnEJ/W/VFVZKB9fW24CTehELWNZApp4x+2qMuHQ9kNWYVMMLodNOXqNwCFcoDau
         +FQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682551312; x=1685143312;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ew+r0wR2/49CwpGe5wo2/JGHnn0lxVgQ595bOly6moM=;
        b=OwjiAFDnStFO8PGIDuE+O969bsaeB8I8aIIKvZ8EYAUn4sE/M4HlhhhDSF7oLR/W+a
         bMOZUOti4sE3APC9X55pQ/P2qVc/LQtdJ3QL9qO3hPudrLZ/JIy6gfNI1eEAaZZBAx1L
         iZqMoix9rOmgr8SC25okzjdFqsjzOQWVs+gq1Uv9lqy7ooPhwfdtj+QY/DBn4kRARDSH
         VcR/KsUC4mBur+ICgtand/qBcKWjXtBtJ1wA2jZAXGfSmitif3HeHfLCqiLQnMQ+QmI9
         eviXs1awtaQoJJmHxLUvXBbTnbgFyWL+j5qJT/OFBTJOTxXiBRItYa+yTbuggbFbrHpB
         oMlA==
X-Gm-Message-State: AAQBX9dk0rONLXgOVsOCnP8Z7ZMaQDYFb6y6JpXMo35rWq6jLf0Il32Q
	i5vuF/qczxjauP2JYNH+YSIVbmzIkOA=
X-Google-Smtp-Source: AKy350ap+ZXdHKC/lEfPlbWa5VkVX8ZzF/DUzLOFjYMGbkyW9saCAbZqOdyQ72eKuV4Ucz+lX1w1gg==
X-Received: by 2002:a05:6214:1256:b0:615:a18b:d5af with SMTP id r22-20020a056214125600b00615a18bd5afmr23321357qvv.35.1682551311996;
        Wed, 26 Apr 2023 16:21:51 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id f9-20020a37ad09000000b0074abf412080sm5486964qkm.128.2023.04.26.16.21.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 16:21:51 -0700 (PDT)
Message-ID: <be3d910b-1559-79b5-ac90-ae297ad93e51@gmail.com>
Date: Wed, 26 Apr 2023 19:21:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmail.com>
Message-ID-Hash: Q7NVP75I3Y72BBNZZF5CNHHYEQ2GXY7R
X-Message-ID-Hash: Q7NVP75I3Y72BBNZZF5CNHHYEQ2GXY7R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split USRP (X310, N231) between two PCs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q7NVP75I3Y72BBNZZF5CNHHYEQ2GXY7R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7142064400927084897=="

This is a multi-part message in MIME format.
--===============7142064400927084897==
Content-Type: multipart/alternative;
 boundary="------------u0Zsw0Olyq902RveoDGzlp0G"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------u0Zsw0Olyq902RveoDGzlp0G
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/04/2023 18:52, Brian Padalino wrote:
> On Wed, Apr 26, 2023 at 6:33=E2=80=AFPM Eugene Grayver=20
> <eugene.grayver@aero.org> wrote:
>
>     How much would work would it take to allow two different PCs to
>     each control one of the channels on the X310? Would the work be
>     mostly on the host (software) side, or will some FPGA work be
>     required?=C2=A0 =C2=A0There is no issue on the RX side (with the re=
cent UHD
>     updates to support streaming to arbitrary IP).=C2=A0 The issue is w=
ith
>     control (e.g. set sample rate) and with TX flow control.=C2=A0 One =
use
>     case would be two independent modems each processing the full 200
>     Msps from the separate 10 GbE ports.=C2=A0 I guess one could always
>     just buy another USRP but it seems wasteful/inelegant.
>
>
> What if you split your application up into essentially=C2=A0a daemon th=
at=20
> controls the radio and handles the subscription to the sample stream.
>
> Your applications then communicate with that daemon - maybe via ZMQ=20
> messages - which handle the forwarding of the sample stream(s) and=20
> command/control of the radio. It's all software and there is still=20
> really just one machine handling all the communication with the radio=20
> device.=C2=A0 No change in paradigm for UHD.
>
> The downside is that you generate a lot more network traffic because=20
> you want to split=C2=A0the workload over multiple computers.
>
> Do you think this might work for you?
>
> Brian
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You can probably buy another reasonably-decent computer with 10Gbit NIC=20
for considerably less than another X310 + 2WBX,
 =C2=A0 also.


--------------u0Zsw0Olyq902RveoDGzlp0G
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/04/2023 18:52, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Wed, Apr 26, 2023 at 6:33=E2=80=AFPM Eugene G=
rayver
          &lt;<a href=3D"mailto:eugene.grayver@aero.org"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">euge=
ne.grayver@aero.org</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div class=3D"msg-1046312852242641516">
              <div dir=3D"ltr">
                <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">How
                  much would work would it take to allow two different
                  PCs to each control one of the channels on the X310?=C2=
=A0
                  Would the work be mostly on the host (software) side,
                  or will some FPGA work be required?=C2=A0 =C2=A0There i=
s no
                  issue on the RX side (with the recent UHD updates to
                  support streaming to arbitrary IP).=C2=A0 The issue is =
with
                  control (e.g. set sample rate) and with TX flow
                  control.=C2=A0 One use case would be two independent mo=
dems
                  each processing the full 200 Msps from the separate 10
                  GbE ports.=C2=A0 I guess one could always just buy anot=
her
                  USRP but it seems wasteful/inelegant.</div>
              </div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>What if you split your application up into essentially=C2=A0=
a
            daemon that controls the radio and handles the subscription
            to the sample stream.
            <div><br>
            </div>
            <div>Your applications then communicate with that daemon -
              maybe via ZMQ messages - which handle the forwarding of
              the sample stream(s) and command/control of the radio.=C2=A0
              It's all software and there is still really just one
              machine handling all the communication with the radio
              device.=C2=A0 No change in paradigm for UHD.</div>
            <div><br>
            </div>
            <div>The downside is that you generate a lot more network
              traffic because you want to split=C2=A0the workload over
              multiple computers.</div>
            <div><br>
            </div>
            <div>Do you think this might work for you?</div>
            <div><br>
            </div>
            <div>Brian</div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    You can probably buy another reasonably-decent computer with 10Gbit
    NIC for considerably less than another X310 + 2WBX,<br>
    =C2=A0 also.<br>
    <br>
    <br>
  </body>
</html>

--------------u0Zsw0Olyq902RveoDGzlp0G--

--===============7142064400927084897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7142064400927084897==--
