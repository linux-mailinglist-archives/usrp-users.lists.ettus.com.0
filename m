Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ABF66CF56
	for <lists+usrp-users@lfdr.de>; Mon, 16 Jan 2023 20:08:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D20A5384223
	for <lists+usrp-users@lfdr.de>; Mon, 16 Jan 2023 14:08:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673896098; bh=6yDf4sqql/tIm2nVkauaphEYIv1ZsDcS9jlfVQLNiFw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wKSHd8Tm6//Vcqkc9ASQ8mEoTnZoLTJOVGPtJwfdZDbCYGpZTlnp2DvyNReYnehAN
	 FBAU+PYLZvdMMsFxVWFlZqcI8V+kzm+YwBoslz5+HtEBG16VwwGAj/YXbxWayPN2yY
	 tIJ2yGCvo3HCIyxecZVRSxGvRwLXyEczwNOm3uQ4+RxHW9iC2GZFb9f8V4gDPZcomG
	 4uYcJCImpMsmU/8AeWsSje2c3eYeX0GyG0NRLnpr6b2loGppzswSdFGXMvUmRKKGB1
	 zSb+nUoahhCVe80xIpRsDT6UEcjuGTqB8XD2wUFF+hJmsAnelSzuAOsasE8iJc3xXP
	 JIrqevsz9g6lQ==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 756DD383E8A
	for <usrp-users@lists.ettus.com>; Mon, 16 Jan 2023 14:08:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ir269DjD";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id u19so70160007ejm.8
        for <usrp-users@lists.ettus.com>; Mon, 16 Jan 2023 11:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ar7x3rSobKZ16s6CwUa14irpFoj7l4iyjR9vM/9T9qM=;
        b=Ir269DjDHHaTHdb/qJAiQTvheWtI/zPjudh42oC678npXI4TFSJxBZeTwR2tmpqG+6
         sLfGJE7/KXrDKXKkkMKBnaYqNUu97jdXw4FwlU7XpQkO2+u+uZky8M/2toyLdxNo3WDy
         3yhCT5+IiPQc7KrHJRZ5/B7ElJ6jPyB5iOJzLEPFwyxd0bDn+nFm4ZGAtZTMh2KFMWkE
         vFLfzhVdWEgtkClm9o7mSMjmeL1ctPgwL22swn1RLo7Q3iRn7oEyn/hD5j+OfeUkqj+j
         oNKDujjYkvY+FaPXV4Oa7s+Rq95EqEXOOSFBmvqwCIxlVCTS2T4sni+iiTQ3xVxODl8y
         G4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ar7x3rSobKZ16s6CwUa14irpFoj7l4iyjR9vM/9T9qM=;
        b=UzsaAF/1/f6pflZ/eI4PtRlY79WWApcZAYoxY7Kl7/1xTtCwlG5gqPhyDkMs4vFLe2
         sw/jOF4KOEIpT0uOYFiSqMEbhCst1Bs8f7n2mNLyA+2htkQCxU/147v2U409tXA0nlpC
         hV5bv7CoJN46Vy/rJptM8qqMZtiIFKAkSDY+JwZoOFAt8Xjq+uf/L7dodWCvuoIzMA2g
         9KVbyupwGttlGiOiKALShr/Fhj1ko5wyQqhMJ/K3G+Zy31M+dAFsugGwqJaWvHz6S+LQ
         nqBMtc7KvHhUyk1zmW/ovGhrtbnEsQGelTTlV26HefTCMvsyc3P+/JZ5TKm4jw1t8t1a
         T7EQ==
X-Gm-Message-State: AFqh2krq3eVtq7I13QUXqXmtUHUt11x0ZUT8aX3NZJ33kwQjGip3Z4QN
	tjAKGCBmYMjqI+a6+rVvoS6ZC4c1bw1Jkbtf2oQ=
X-Google-Smtp-Source: AMrXdXtqIfidP0qyrdCuxOdQfLYQLt5tfw+kiXCRzHvmX9Dk4MGvh+N22oWIE4lRnstQE/vbbaLLqndkF+CPpHH1DN4=
X-Received: by 2002:a17:906:1d5b:b0:870:59d5:9052 with SMTP id
 o27-20020a1709061d5b00b0087059d59052mr4410ejh.293.1673896091251; Mon, 16 Jan
 2023 11:08:11 -0800 (PST)
MIME-Version: 1.0
References: <QAaPr3p2OrWVpkAyUM3SZLzz5IUt1M38KCpGM1AjE@lists.ettus.com>
In-Reply-To: <QAaPr3p2OrWVpkAyUM3SZLzz5IUt1M38KCpGM1AjE@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 16 Jan 2023 14:08:00 -0500
Message-ID: <CAEXYVK4H+2pBCAFmrzfP=G0GWm4GBTSnYp37vVN2KWSWgnBFKg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: LLH6LUFRPXXFP5BMNKLV5NKPOSNB4TB5
X-Message-ID-Hash: LLH6LUFRPXXFP5BMNKLV5NKPOSNB4TB5
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LLH6LUFRPXXFP5BMNKLV5NKPOSNB4TB5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9187040512930998557=="

--===============9187040512930998557==
Content-Type: multipart/alternative; boundary="000000000000e8f84505f2664d8c"

--000000000000e8f84505f2664d8c
Content-Type: text/plain; charset="UTF-8"

Glad it worked out.

It builds an in memory project only I believe.  You can load up the GUI by
adding GUI=1 to the make command.  From there, you can save off the project
if you like.  You can also only check syntax with CHECK=1.  Check the
bottom of the Makefile for some other supported command line options:


https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b7d52e43dfe/fpga/usrp3/top/n3xx/Makefile#L203

Good luck!

Brian

On Mon, Jan 16, 2023 at 12:39 PM <jmaloyan@umass.edu> wrote:

> This worked! Thanks.
>
> Do you know if the makefile generates a vivado project (.xpr file) or does
> it only produce a final bitstream and its reports?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e8f84505f2664d8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Glad it worked out.<div><br></div><div>It builds an in mem=
ory project only I believe.=C2=A0 You can load up the GUI by adding GUI=3D1=
 to the make command.=C2=A0 From there, you can save off the project if you=
 like.=C2=A0 You can also only check syntax with CHECK=3D1.=C2=A0 Check the=
 bottom of the Makefile for some other supported command line options:</div=
><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearc=
h/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b7d52e43dfe/fpga/usrp3/top/n3xx/Mak=
efile#L203">https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d41=
9e5d7fb9b7d52e43dfe/fpga/usrp3/top/n3xx/Makefile#L203</a></div><div><br></d=
iv><div>Good luck!</div><div><br></div><div>Brian</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 16, 2023=
 at 12:39 PM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p=
>This worked! Thanks.</p><p>Do you know if the makefile generates a vivado =
project (.xpr file) or does it only produce a final bitstream and its repor=
ts? </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e8f84505f2664d8c--

--===============9187040512930998557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9187040512930998557==--
