Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 500C7A5F1A7
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 11:58:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AFFC386155
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 06:58:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741863530; bh=j9oKszRvdZUiItYrODdbwZaJAUiTaIu3rCbAc7NgD/o=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Dcok85Yw8jI7DqbXZf0w9snqzVN05yFWStvfvdvXNFBTONr3qMRTPuCEMVx8ixgw0
	 i8WnWd8tklsQP1zhMqHF6B18t9LZ7b9u6e8pYAvpRDr2KDQ/9Sb4v2YRuIMtwA8qMv
	 H0ENGHZ4taf4PTIwNqpVhbgR8wX0NiJDcAbGxapXVziixLixjGb6vzSHskJ+alEGQ3
	 qeJwPmaeVYqtCHu33NHCyz4e5I9Qlw9MHfbe6gsvS1HZn5S2i5xQe71glG8wfKkays
	 IkgEPxjw+UN8JWZRm/EDSonaA6MdRrl7fCcjfV+BnYrTCfH9/yt7uSXNbue/hSDUJn
	 DzGHFP2I/+gog==
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 06208385D2E
	for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 06:58:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mode51-software.20230601.gappssmtp.com header.i=@mode51-software.20230601.gappssmtp.com header.b="zMCDlDjg";
	dkim-atps=neutral
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-72a16478125so209022a34.2
        for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 03:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mode51-software.20230601.gappssmtp.com; s=20230601; t=1741863492; x=1742468292; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vogXDR7jnVe5uF7pZiOFJ/SfM3aIanpmpIgOJKRQ0fo=;
        b=zMCDlDjgnYAYfTfCrn8aL4PE2OWfalm971aPJpdPA3CiNWc08Vagt43q7UwxbPULWX
         NB4mhAoiMbI0Qfv1E4rT/jf4bQpSQkoF1pLNghhLZ0foqjc3J6p3ptb8UtMakdO6J3s+
         i4iDXM8IRGrM3OdeCrvbXrP8xapCh7XqVYVk0ztrRdHFJLmSJkRB6dVWQlBxBV6QL9W1
         y4djYUa+Dtju24SuAVO9W7lX4XOH9+iVmU7OcDSCGcsOeASs1714a2jyZMkvqICGWiSG
         PZcUWNw65wteY32aODHhQRaUZJyiAiav+ueEm6n4zN66QYuXwzPty//++Kgrb7jTW6w4
         YolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741863492; x=1742468292;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vogXDR7jnVe5uF7pZiOFJ/SfM3aIanpmpIgOJKRQ0fo=;
        b=FKXS7zzRNae9Wt28m+/H0EfMEhcrp0Gix80H8VCfDL5U+d57tPTVV9ZjVh3m0lL3vo
         mxopAkQDwwVGCp88r16y+oiRrgsprYRo6V9+oAswfIHgymptFm8tqNHocm0ghnG0Dhsw
         tIt+8gilqDFRc7YqgUQCOr6iG4T0ElfYkZH41IivLx7gkBEl7WkJ81LtG/yIFcxW2eTx
         4NWVw0itxsWM5+sZyDFIzAt7O9paedvFASvK/yai4ZxUigrmPqKeV63zcGMRxgAhbfPp
         3cag2CQUK2XxxwsbaPD+gclHX1/IZXo6gBptJKldRNtcItMMyM4sZQL9Bq7gAsJpH/YM
         m22w==
X-Gm-Message-State: AOJu0YyvrC+7L7M/vEv1Fc6teo5JpteH3J6nKpmBk0dTrpxbMisAgJRh
	4PhmyWXoOYChGL9at2wtdxtlvpv1+iuZZOmX6P2nOAmG2aGqIkZC38h1eggpg85t1KrK6ojECZi
	cUVxgs25VW6eDmHtafXAfP2DGQMCu8Bzuqs0hSChdx2w7wEDTV+o=
X-Gm-Gg: ASbGncsDS/o2P3mfoggPzUPiRKXTPxPYfpEQRECqxmm+y5OrFUgXhvHpL9fedcRVkvY
	YBMlwkf01FsmKESipdWNi1HOFdeZFNdOy9eRvIIjtW8G8vidzmaAP8hAzbhCtseFpT14YUVeT0K
	4Wwt/yoLNAykBJL2yVyYf8sW6IXQ==
X-Google-Smtp-Source: AGHT+IEecd6lZ4OHZZol3Ko22qcqZRl+8pwV+8JjZfPNFobY8WXKkZFc+AAPWb2BmJhxc+9eVBv2tUSnzBgt/nK5tcU=
X-Received: by 2002:a05:6808:404d:b0:3f6:a7c7:909b with SMTP id
 5614622812f47-3f6a7c7941amr8569284b6e.22.1741863492019; Thu, 13 Mar 2025
 03:58:12 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Mar 2025 10:57:36 +0000
X-Gm-Features: AQ5f1JonfE-hVaxAbaPnJPMRdNzKAL-SkVVoibL-_TsFm0Y9Z1XYaLlnjpHnepo
Message-ID: <CAOcWHKh6vTnK92zDn8pJFGOWFO-gSZ-NRpC88w8HzEdAstaJfA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: TIQWC3KLW4WRYUD36DPDN5OANQLMA4TH
X-Message-ID-Hash: TIQWC3KLW4WRYUD36DPDN5OANQLMA4TH
X-MailFrom: chris@mode51.software
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can the Octoclock CDA-2990 use a Timeprovider 4100's PPS/Freq as inputs?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TIQWC3KLW4WRYUD36DPDN5OANQLMA4TH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Chris Newman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Chris Newman <chris@mode51.software>
Content-Type: multipart/mixed; boundary="===============0190253665349545345=="

--===============0190253665349545345==
Content-Type: multipart/alternative; boundary="000000000000b07f9f06303732af"

--000000000000b07f9f06303732af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'd like to use a Chronos Timeprovider 4100
<https://chronos.uk/product/telecom-master-clocks/timeprovider-4100-precise=
-timing-grandmaster-r2-4/>
to provide the input signals to the Octoclock CDA-2990.

Will the Octoclock accept the Timeprovider's signals for 10MHz and PPS?
Presumably the Timeprovider is outputting sine waves.

I see the Octoclock outputs the square waves needed by the SDRs. Therefore,
I guess the question is - can the Octoclock convert sine waves to square
waves?

The Octoclock FAQ states:


   - *What are the input and output specifications?*


   - 10 MHz Input =E2=80=93 0-10 dBm
   - 10 MHz Outputs - ~1.4 Vpp Square Wave, Impedance 50 ohm nominal
   - 1 PPS Input - Logic-level pulse, 2.5 V - 5 V
   - 1 PPS Outputs - Logic-level pulse, 2.5 V - 5 V



--

--000000000000b07f9f06303732af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;d like to use a <a=
 href=3D"https://chronos.uk/product/telecom-master-clocks/timeprovider-4100=
-precise-timing-grandmaster-r2-4/">Chronos Timeprovider 4100</a> to provide=
 the input signals to the Octoclock CDA-2990.</div><div><br></div><div>Will=
 the Octoclock accept the Timeprovider&#39;s signals for 10MHz and PPS? Pre=
sumably the Timeprovider is outputting sine waves.=C2=A0</div><div><br></di=
v><div>I see the Octoclock outputs the square waves needed by the=C2=A0SDRs=
. Therefore, I guess the question is - can the Octoclock convert sine waves=
 to square waves?</div><div><br></div><div>The Octoclock FAQ states:</div><=
div><br></div><div><ul><li> <b>What are the input and output specifications=
?</b></li></ul>
<ul><li> 10 MHz Input =E2=80=93 0-10 dBm</li>
<li> 10 MHz Outputs - ~1.4 Vpp Square Wave, Impedance 50 ohm nominal</li>
<li> 1 PPS Input - Logic-level pulse, 2.5 V - 5 V</li>
<li> 1 PPS Outputs - Logic-level pulse, 2.5 V - 5 V</li></ul><div><br></div=
></div><div><br></div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div>--</div></div></div></div>

--000000000000b07f9f06303732af--

--===============0190253665349545345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0190253665349545345==--
