Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 872524B282B
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 15:44:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B0703853E1
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 09:44:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eA3NJfQT";
	dkim-atps=neutral
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AEAC384B91
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 09:43:21 -0500 (EST)
Received: by mail-pl1-f169.google.com with SMTP id j4so4855259plj.8
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 06:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jIcPxYjFrL3IFPazYap34RQLAw5fnocAYjX/BLeXlOM=;
        b=eA3NJfQTtwZ1q218bVGXhqgoq3LyVWfEebJiqUyQ+JaPwD0Dy3oQ7279ewUuAamLIk
         AvDZt3CRHAYknzKa8lv3KN3JDbAcHcCMU2hr4qozn9keRTHC5PuGR1wh0hGm8JpEtKFL
         j3TtI1XTMZRVoixKRC8NE7MomXXD1DmPZk580WdghmuzBS3fkTMMLhEj2QuPM5EJN1vF
         IchqEs4lK3f17poFo56SEi1r0ks3TzGl4POM9qxsZxa3on7o/3G1Fp9JHO9UNE0Zxas9
         GOxQIjV8FOSTusf7q6IqY9et3M81qWj0Ku4O6D3wKNnA6/G12tXGFQgJzq4R15K1WTE5
         fLIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jIcPxYjFrL3IFPazYap34RQLAw5fnocAYjX/BLeXlOM=;
        b=fHZGGR0H1GxpcW2nVBElRwYpgHhTnkKsUvv5wWufyPbomXXP1MVTQYCSZILc3dHThH
         LOzNLJlkuZ95dAMklDTKnBoJSt4yltCApEitjrCIWd7chCRZu0P8LPzRF73n4S5Lhplj
         uTahFk2kNsal3BkZUjoYbD/hycr6yK/yD3ZZwDdQiSfJawHRVK/+Z5sWpwgv2ZPjn/xR
         wLfNDZwMEErbSZD6B8GelQSyPOMUjppOjMch5x11RhTMhiIJ2VaI6Pmd8p4XIVQiS53+
         OrrnckD3iz0pmoYyDX9eNq03eOrV7X/Gn998YQvDKxcY1wNFMBJ0sANPfnMZiEzXolzw
         CJ6A==
X-Gm-Message-State: AOAM533JxDkS1GUhY2Xvsmf9/YXfKnJasaul7lakWyyD09W+L0h12XB6
	uVBIf+kBN9XOdGLG8lXCrTJ3v9fcM7mkQ9/jnqY=
X-Google-Smtp-Source: ABdhPJzID7mPazbDjcCfFSrSQRa6u+9px13bngUfn5MTfn3pn+tM4DYt1qxPZ+PObQhs5OOK/25kw8sTp7q08dg5c9E=
X-Received: by 2002:a17:902:e88d:: with SMTP id w13mr1955653plg.86.1644590600246;
 Fri, 11 Feb 2022 06:43:20 -0800 (PST)
MIME-Version: 1.0
References: <CAOucfAPKzeN=Ei1g6J4fOL+KcWff8e99afBHUG5w7kZx5xnpQA@mail.gmail.com>
In-Reply-To: <CAOucfAPKzeN=Ei1g6J4fOL+KcWff8e99afBHUG5w7kZx5xnpQA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 11 Feb 2022 09:43:08 -0500
Message-ID: <CAEXYVK623aF24R2wT_ZWcTXUrjcSv9E4=H3fA1tt2SLanij6eA@mail.gmail.com>
To: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Message-ID-Hash: BIESF2UZRSES3NLHW3UO7UUFPYBY5NZQ
X-Message-ID-Hash: BIESF2UZRSES3NLHW3UO7UUFPYBY5NZQ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Could not find block with Noc-ID ...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BIESF2UZRSES3NLHW3UO7UUFPYBY5NZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1011743460274088938=="

--===============1011743460274088938==
Content-Type: multipart/alternative; boundary="00000000000087588f05d7bf1668"

--00000000000087588f05d7bf1668
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 11, 2022 at 8:16 AM Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
wrote:

> Hi everyone,
>
> I'm trying to follow the RFNoC 4 workshop and I've come up with an error
> when I'm trying to load the image to an ettus 312. I think my environment
> is set up correctly but any help would be appreciated.
> It is worth noting that I'm trying to use RFNoC with gnu-radio.
> I've also seen an email from 2020 but I'm not sure how I could put my
> custom block "in-tree" to solve this issue.
>
> The error:
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
> 0x501de012, 0xffff
>

This is a warning, not an error.

To alleviate this, you need to set the UHD_MODULE_PATH environment variable
to the path where your out-of-tree library for this block is located.

Brian

--00000000000087588f05d7bf1668
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 11, 2022 at 8:16 AM Lautaro L=
orenzen &lt;<a href=3D"mailto:lorenzen.lautaro@gmail.com">lorenzen.lautaro@=
gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-fam=
ily:arial,helvetica,sans-serif">Hi everyone,</div><div style=3D"font-family=
:arial,helvetica,sans-serif"><br></div><div style=3D"font-family:arial,helv=
etica,sans-serif">I&#39;m trying to follow the RFNoC 4 workshop and I&#39;v=
e come up with an error when I&#39;m trying to load the image to an ettus 3=
12. I think my environment is set up correctly but any help would be apprec=
iated. <br></div><div style=3D"font-family:arial,helvetica,sans-serif">It i=
s worth noting that I&#39;m trying to use RFNoC with gnu-radio.</div><div s=
tyle=3D"font-family:arial,helvetica,sans-serif">I&#39;ve also seen an email=
 from 2020 but I&#39;m not sure how I could put my custom block &quot;in-tr=
ee&quot; to solve this issue.<br></div><div style=3D"font-family:arial,helv=
etica,sans-serif"><br></div><div style=3D"font-family:arial,helvetica,sans-=
serif">The error:</div><div style=3D"font-family:arial,helvetica,sans-serif=
">[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x501de=
012, 0xffff</div></div></blockquote><div><br></div><div>This is a warning, =
not an error.</div><div><br></div><div>To alleviate this, you need to set t=
he=C2=A0UHD_MODULE_PATH environment variable to the path where your out-of-=
tree library for this block is located.</div><div><br></div><div>Brian</div=
></div></div>

--00000000000087588f05d7bf1668--

--===============1011743460274088938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1011743460274088938==--
