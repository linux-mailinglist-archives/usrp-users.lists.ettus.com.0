Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD7E492F74
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 21:36:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B724C38580A
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 15:36:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="erRGLeA8";
	dkim-atps=neutral
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B4961385187
	for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 15:35:20 -0500 (EST)
Received: by mail-lf1-f46.google.com with SMTP id bu18so220554lfb.5
        for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 12:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mMJZbJLZfGVAkKSKAkYsSxsCTOcXun814YB13nLC9A0=;
        b=erRGLeA8e/vvcRbRNAiuFDVBdx51YhANaV8FMD6Orv9oepfiRyr5gC1HgyNzMpcqOT
         UfMb5Ei+rLYTJLbS6zcVDpP15D1cGlM9sCBBz2uBRwHERLlMUhPGRNAb9+AAqkPvEIV3
         Hwj9awwUGUmcagX3ejkA6/AFqLXeUdX2deMlXdXuPCKRkrxb8Ypx7n+bLldXvZRgExNa
         9wtNgsLILuuVsbZKOBcEZEeNJCN/khivumXi3qkESvASM81DOdcTPrq+Q4bvA6/wsSqh
         svcF/QObar/BT8sFqIW4ZTjEDZ8TJN/dGtR8hZnZ2C9ZU5Uyas648hX3HdTyCTyfJtlC
         6BXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mMJZbJLZfGVAkKSKAkYsSxsCTOcXun814YB13nLC9A0=;
        b=T52LX2e4zq0DwwUf+5mExJxBTQIjBUjSDUJ0XeI7NJ1j7MWOS73UrHvmKEbDlQ7m+v
         LnUX9pRgMi1rA996nrymkvZXFghFioonm0cJx649tWcJCmMa+jNXD81xnSTbAYf42tN6
         Wz0AkC8jrI7xuoaWOu9qErgCYNZh08fUHbmP1qxxmBlkzIpzMS2OJuXQrgoQ0DHC7Txw
         qa0BWxw5fi6XbigAt5M0cZtl8Bie7nU4u7X4FEzpQTWt/q5D95pnrZLwcQUM/dSKUyKq
         sHNIsaxMXqrCEvloCzfA3p9qn8EIWsOTPn08/ttUDeR68jHqNaeqENh06+qULB5keAe1
         EIuw==
X-Gm-Message-State: AOAM530THj7nLTahOjwRXgRdSVU1oUq51DiIWyR5gsjelbXSl+e24Xrs
	Du1PRcVHYdROQ5rdJovMa7anDxSaDZnikYJ2f30=
X-Google-Smtp-Source: ABdhPJwPwl3/S92jGiVuRWkvkRe3jnMH4BbSsn16S0JrWkMW6jayYmxL9yGczx8Kpr9RHVh0o8yUfP7LztAE/mMMXO4=
X-Received: by 2002:a2e:8011:: with SMTP id j17mr22423540ljg.92.1642538119452;
 Tue, 18 Jan 2022 12:35:19 -0800 (PST)
MIME-Version: 1.0
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com> <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com> <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com>
 <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com> <CACwKM9JOGP27FgMMq+cTkpna3v3D5QKC=_74H=953BGjGSe5KA@mail.gmail.com>
 <a5ac4b90-65d2-c982-5c0f-e921de878b2c@gmail.com> <CACwKM9+Z1xzygaZWzPMW8JnkOs4NJ_W58xbGvvyrnRL3JhOCMQ@mail.gmail.com>
 <ecbce775-f321-94ee-d00d-2902239f4c6b@gmail.com> <CACwKM9L8Mkb++GxXrnwx97B3y8EWegPQWUmbLchgR03capYjTQ@mail.gmail.com>
 <cfd98b5b-24d6-d5b3-5a90-6baf3fbf15e4@gmail.com>
In-Reply-To: <cfd98b5b-24d6-d5b3-5a90-6baf3fbf15e4@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Tue, 18 Jan 2022 15:35:08 -0500
Message-ID: <CACwKM9KVsCG1UP6j875qS9EZX3+XN0PAW2nGrSH9pU3C3jo-eQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: YRVST545AB6U35OEZKYU7GAXUWS6IQB3
X-Message-ID-Hash: YRVST545AB6U35OEZKYU7GAXUWS6IQB3
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YRVST545AB6U35OEZKYU7GAXUWS6IQB3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3544923016812259396=="

--===============3544923016812259396==
Content-Type: multipart/alternative; boundary="00000000000023d92305d5e1353d"

--00000000000023d92305d5e1353d
Content-Type: text/plain; charset="UTF-8"

ok, so
uhd_usrp_probe --tree
that's helpful. I see what you were saying.

--00000000000023d92305d5e1353d
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>ok, so <br></div><div>uhd_usrp_probe --tree</div><div>that&#39;s helpful. I see what you were saying. <br></div></div>

--00000000000023d92305d5e1353d--

--===============3544923016812259396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3544923016812259396==--
