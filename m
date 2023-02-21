Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E6169D96A
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 04:43:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1ABD5383CF0
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 22:43:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676950985; bh=z+l4NOFSTMwxCXpEtCvaWMzW5Hfua0TZHxPSITlJdr8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iozIuf3XHEdU5palCuvcse+Ep36n/JKwzf/Ru2nKrKjsXdnAZFXW1+22lflF7ZH8A
	 S8GnGqPz1tPv3vdeP5PENZofZdnxX0zLxlQ6TK0F0hbAkqs12xnzDuSyohVzW/rtF8
	 LIFECRyXbahEwIFv6IMnpgVn6CvoUrE1DmoINyCGgoSXk57Ih59m3ysGoTHNBoC9DI
	 Sx7F1wcXUJ9OOEFi72jVgICTnwJoi3zx9kwyK+zqx+VO0+JBZtcocCj5DWrnOiIBgH
	 cX/Z2SbjzV2zHJlSAqWlQEbZboD8qyRxlomwbkKYiQ2HAyiyPCYqkSqbpW3lyRFTBH
	 Tj+PLABAPa9bA==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id D1ECE383C7B
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 22:42:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="V5GHvWVb";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id b12so11872640edd.4
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 19:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ri+IghzvuEaIyx6nrYKC/4A9mhz5Kl/DES2hC9DCcog=;
        b=V5GHvWVbgquhB0TO/u597kV1QZkKNqvzmbr+zelGpddoedaZ1YNVBnZmUWC3x3shZn
         pEHF9407LBbFINtcQa2u28hM/QJ60CG7a7m/krD9f0UvIb80FrPHknAnC+5rFOcUSBV7
         UqyHLorwMnf0hICj2Tb2bgV0/8dCDAl34K5AVgNFTvCW5Zz2HsZYwrMWU6yrc7OpYHwD
         kp+Q32anqO7jhNjnT1UsjW+4iuvd9LXZoUg7G8ZxtwTL4A8lcDlPJLsZIh2YwugjyYCo
         Stwij48o+0a9u/Z3Ha6OPIxaxPne4srMRNxSzsfV5z5eLeagu9kPciTdywSU6jCz6hpR
         3TfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ri+IghzvuEaIyx6nrYKC/4A9mhz5Kl/DES2hC9DCcog=;
        b=p4zANq6gyl1BF3jlUUd/ysWzoWw2RE3yQZSHb4Vw42rmTcvgperSL1sb2Ni1G3DBzg
         fcuaoEpUAhGGpwXMbF/S07vlCEyedgC3BAgZuPQ3fd9LF/tOQUhDtKK7GY8JQKOq9wbd
         Zq/MMHYRPYycLJYTo2fVwu9CSJ0oI2HEeILP+Mdu/5Ri1/51vge8K8Swjjcibn6h0sOe
         PQqPhjSGmjRFlRfJ4Dtxd3D+v3/CQ4Dr8JQflen6QtKfkP+DlVJKkKSWrUH9/xsyeGjG
         2FB1tPWz2cavl1i7XnhaTT4rUWmvBCYcUHC/vTtTLEj20q0kwkGV98JSkFPDtysVtban
         dWJw==
X-Gm-Message-State: AO0yUKWZDySZ2TogPoul4+0UTW0BkeEOdTnRPs4KgLz+o+mo7qXAWM5L
	z+vSBwSP1fc+gylVP1xWQe2cemRagW/JalU2jGkAZOAg
X-Google-Smtp-Source: AK7set+EGcuEjrlOnEqiByuBlYEp8LbsgVFqNYFFe9HSfQm80zAAzTQy2/FTgMuiB5s24orOcC62NGgpgK1nGKG/BTc=
X-Received: by 2002:a17:906:5a49:b0:8b1:7684:dfad with SMTP id
 my9-20020a1709065a4900b008b17684dfadmr6405023ejc.8.1676950949592; Mon, 20 Feb
 2023 19:42:29 -0800 (PST)
MIME-Version: 1.0
References: <xMmb5KLDp4NDWXJdm6MmnGzgCMDJfmy2tKIdsnRMlg@lists.ettus.com>
In-Reply-To: <xMmb5KLDp4NDWXJdm6MmnGzgCMDJfmy2tKIdsnRMlg@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 20 Feb 2023 21:42:11 -0600
Message-ID: <CAFche=jjBZRbXHa_JhS-+KoYa=4DbnfG7AVkANSGx8-whUdybQ@mail.gmail.com>
To: ali.mahbas@brunel.ac.uk
Message-ID-Hash: AKDKBIWDNF6I5RDELLULBG5BNH3HROYD
X-Message-ID-Hash: AKDKBIWDNF6I5RDELLULBG5BNH3HROYD
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 - All LEDs are off
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AKDKBIWDNF6I5RDELLULBG5BNH3HROYD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3294747650968092416=="

--===============3294747650968092416==
Content-Type: multipart/alternative; boundary="000000000000a8122305f52d9101"

--000000000000a8122305f52d9101
Content-Type: text/plain; charset="UTF-8"

Hi Ali,

I wonder if the FPGA is not coming up. I'm not sure what the LEDs do in
that case and I don't have a device handy to check. You could try this
recovery procedure to see if that fixes the problem.

https://kb.ettus.com/X300/X310_Device_Recovery

If not, the device may be damaged.

Wade


On Fri, Feb 17, 2023 at 8:07 AM <ali.mahbas@brunel.ac.uk> wrote:

> Dear all,
>
> I need to your help.
>
> Today, my machine does not detect my X310 USRP anymore.
>
> Fan spins.
>
> All LEDs are off except the power (Attached photo)
>
> Ethernt LEDs are off.
>
>
> Thank you in advance.
>
> Regards,
>
> Ali
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a8122305f52d9101
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ali,<div><br></div><div>I wonder if the FPGA is not com=
ing up. I&#39;m not sure what the LEDs do in that case and I don&#39;t have=
 a device handy to check. You could try this recovery procedure to see if t=
hat fixes the problem.</div><div><br></div><div><a href=3D"https://kb.ettus=
.com/X300/X310_Device_Recovery">https://kb.ettus.com/X300/X310_Device_Recov=
ery</a><br></div><div><br></div><div>If not, the device may be damaged.</di=
v><div><br></div><div>Wade</div><div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023 at 8:07=
 AM &lt;<a href=3D"mailto:ali.mahbas@brunel.ac.uk">ali.mahbas@brunel.ac.uk<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
p>Dear all,</p><p>I need to your help.</p><p>Today, my machine does not det=
ect my X310 USRP anymore.</p><p>Fan spins.</p><p>All LEDs are off except th=
e power (Attached photo)</p><p>Ethernt LEDs are off.</p><p><br></p><p>Thank=
 you in advance.</p><p>Regards,</p><p>Ali</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a8122305f52d9101--

--===============3294747650968092416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3294747650968092416==--
