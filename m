Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 752CC4A8D19
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 21:18:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20DB1385994
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 15:18:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IyOigWpD";
	dkim-atps=neutral
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 49939385A76
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 15:17:19 -0500 (EST)
Received: by mail-lf1-f45.google.com with SMTP id x23so8500289lfc.0
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 12:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Yp8UB7caGZ37fklH9Ovz7s7qeZZaN3/J8NdaUIWFO8A=;
        b=IyOigWpDqQOuFXmY1sqXDiGRjw3CwIOHnIBZmExYOnzU0vqouS1ffnCRPQeh0Ka7tn
         /kwl0E76C69gGfL5HUMmHECa22QwIzpz8BlJmTwN3XoccNPscixRiNE5Oe1rHyk7VV9n
         UTkZ4t1cyBkVwagND9gDz+p/G7Gq4KMac6KGyyo1w9FOG88CA7PN5BIoHlCFF+TmmSYc
         /OAtaOGnq+pkd4ndySZXYmmND85UAgmPiccoubGNBqv8WXTEUEUA+PxIacX7gRf1R62V
         OyrMi+zgf9nOLc5LbGE7E3aB91OidPsXxBISp45rk+JiLH7zAiC/hhXx8iuzLhE9KUbw
         Xwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Yp8UB7caGZ37fklH9Ovz7s7qeZZaN3/J8NdaUIWFO8A=;
        b=F1qXDkoZU9PM3xMG44ilBiQUKPCWCCs5fA4aFwKzwOqHmfa6lv/B3EADSD5wajA8/d
         9QHD7iBSvIqm3ESqkyVyJHq5JnnLtweNxw8D3LGFOAPunhZcsBzGv1aWy3VqGo3E1053
         JjYTtfEs+ULbyp5ZBd+yS3MgaZxoAoWpllKjskk7UMTVPEMz/JZFGbWtCKzLU/EG1DNj
         hfL8SqLduLE7SsAPqqn0zZJABtfFryGAgNta+e2Gki8qxJlJ/3wsuwvzFQJVihScVqF5
         lTU4StHHONySot2gYBejb7eQsgkPg1sYcvLfbqmrP/xZhGu79JxqqjN45H1/1mjlZUPa
         6MJg==
X-Gm-Message-State: AOAM533Mol6Br0b9yPmsZ+brzJDQBnRPcMuh7WmN/1QvocaInrLTZvuH
	eGvVjXI5YqLSdXN+S+IfK8yw0UIQ8jKThLuxjCm+J86hzc4Q
X-Google-Smtp-Source: ABdhPJyjk03sjzsAretmEfRe10yfytSV1/rSOi/6UlCm57MZu/zwCAg1ehZZoOP/M3lHBm2AFW+eNBJboUj5v2yzSz8=
X-Received: by 2002:ac2:58f7:: with SMTP id v23mr27248068lfo.390.1643919438534;
 Thu, 03 Feb 2022 12:17:18 -0800 (PST)
MIME-Version: 1.0
From: John Hodgins <johnyhodgins@gmail.com>
Date: Thu, 3 Feb 2022 23:17:07 +0300
Message-ID: <CAGM_aqyAQ9M-vHC7NrbzrvbPd6_YJQ8vZiQRE9hSoPJZfM6vGg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: OPQX7KUAPLROQBMUQJZX3LROC7PU6XTV
X-Message-ID-Hash: OPQX7KUAPLROQBMUQJZX3LROC7PU6XTV
X-MailFrom: johnyhodgins@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timed Commands compatibility between different USRP series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OPQX7KUAPLROQBMUQJZX3LROC7PU6XTV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6546860761987329271=="

--===============6546860761987329271==
Content-Type: multipart/alternative; boundary="0000000000002c602f05d722d215"

--0000000000002c602f05d722d215
Content-Type: text/plain; charset="UTF-8"

Hi there,

We have a simple set up where we collect iq snippets from 3 usrp's at the
same rx-times via timed commands. We introduce delays between the usrp's
via a reference delay box and try to recover the introduced delays via
cross-correlation.

Things work great when all the rx's belong to the same USRP family. For
instance we have been able to recover the correct delay for all B210 (with
GPSDO/TCXO) or all E310 (with GPS antenna) scenarios. However, when we mix
different USRP's, the delays computed via cross-correlation no longer make
sense.

For instance, when we use 1 B210 and 2 E310's the delays between B210 and
E310's just oscillate wildly but the relative difference between E310
remains relatively stable. We tested 2 B210's with a single X310 (with
GPSDO/OCXO) as well and we see the same problem as well. The interesting
thing is though visualizing the spectrum of collected snippets from
different USRPs show pretty much the spectrum of the known applied signal.

Is there some fundamental discrepancy between different USRP families? Or
maybe UHD somehow interprets samples differently for different
USRP's (flipping i and.q, different rx-time, pps implementations,  some
precision issues maybe)?

In any case I would be grateful if anyone can shed some light onto this
behavior.

Best,
John

--0000000000002c602f05d722d215
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div>We have a simple set up where=
 we collect iq snippets from 3 usrp&#39;s at the same rx-times via timed co=
mmands. We introduce delays between the usrp&#39;s via a reference delay bo=
x and try to recover the introduced delays via cross-correlation.=C2=A0</di=
v><div><br></div><div>Things work great when=C2=A0all the rx&#39;s belong t=
o the same USRP family. For instance we have been able to recover the corre=
ct delay for all B210 (with GPSDO/TCXO) or all=C2=A0E310 (with GPS antenna)=
 scenarios. However, when we mix different USRP&#39;s, the delays computed =
via cross-correlation no longer make sense.=C2=A0</div><div><br></div><div>=
For instance, when we use 1 B210 and 2 E310&#39;s the delays between B210 a=
nd E310&#39;s just oscillate wildly but the relative difference between E31=
0 remains relatively stable. We tested 2 B210&#39;s with a single X310 (wit=
h GPSDO/OCXO) as well and we see the same problem as well. The interesting =
thing is though visualizing the spectrum of collected snippets from differe=
nt USRPs show pretty much the spectrum of the known applied signal.</div><d=
iv><br></div><div>Is there some fundamental discrepancy between different U=
SRP families? Or maybe UHD somehow interprets samples differently for diffe=
rent USRP&#39;s=C2=A0(flipping i and.q, different rx-time, pps implementati=
ons,=C2=A0 some precision issues maybe)?</div><div><br></div><div>In any ca=
se I would be grateful if anyone=C2=A0can shed some light onto this behavio=
r.</div><div><br></div><div>Best,</div><div>John</div></div>

--0000000000002c602f05d722d215--

--===============6546860761987329271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6546860761987329271==--
