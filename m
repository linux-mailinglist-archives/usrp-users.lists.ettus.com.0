Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DCA53386A
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 10:28:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88BD7384F61
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 04:28:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653467298; bh=fpLjmm5ScRafs/OUlxCsGMCNSQF+owjaJhtBXCp9csw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YyXka3VN9sQ6hYkfEHSOZVfETi9Y3aClquFGAzV45uwjm0WbvuBS7OdpLsU0aaNdn
	 4iFnMC+scHfnhayjD3RjGtSFL54rFtulf9ZcJs3RGPt7KeqGw8TSLbsvFK5K4WneYa
	 uQAFxo0V+iqCILPzivSVEtNFHgc/fhzT5Z41JI6xczjBQGXRiobIsErI0JhParCkFz
	 bmuMlTYUidqVbw08ntoe8ED7HB7o7Jas4ji5mLDkJHBVacS4DWzRhEOx2XMXTStPZK
	 9xKY/8I4P/PaLaVYPlIgm9EMDy39iHbrUDywOEBnMkeKoDtUnfjSmpT9x/0yNq/KRh
	 uYchhV9GSqg4Q==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D15CB38427B
	for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 04:27:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SFO1+eww";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-2ff39b44b06so206607797b3.13
        for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 01:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=be4f6klY668A78gN691EmlYtBO0INYhzAlJ3pSXGgz0=;
        b=SFO1+ewwW5J+ij7zoO2HaD9ADsBKUjbIt6scwCdIYxNa6SpzAIAfKN1kJZnkMx74iG
         bf7ol0nxA3NBgCoPlc0H2etV8nNRbMMI+fLn3Vmy9B3MnpfCBmCQYs0pwMiQJ6TAnj1K
         vQ3pBdnxwkkMDO1PKLhIOiHvhHNHBBrd6oRIzDbc78msQu5g3FSf+RXNUZqzKqZD9l3o
         NJu4FdbhUk3C7L/bNSDunk8f+ghi2UU+EhWFgvD3eaXOOfMJN/H6oHdOeDm+T5ccUb+j
         ewdkerTljh2StnWKpW3cRfZrUew0ho5NFaqnis99TMtMiWqd9PYwOr1vyywHpZGQji/E
         x2EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=be4f6klY668A78gN691EmlYtBO0INYhzAlJ3pSXGgz0=;
        b=51b8VbKXtGTulZgGaF9JGVPw1C5ssSMGKmD/HJalMERzZjy6Bes4v1nuEVl40MKsv4
         HjnHMEryvcpkIXO8srFDh1+jttX4Mwp22VPtI3z+yOvQMf66IiULmRSb+1moyd7QOtiZ
         +/9Tc++2P8ajgE1TFdjX4tMvG82XDLTzMtrYRpTFEmNNW+rgvOwr1WODfMiIdHtjPXT0
         jZRxHMnxvii/853ejVMfCgw5far2CV10xjy1Z7Pr68jRTMP8gOcmRKMTWtQiibJuIGGn
         y5TcgVdUoJ5elr+i9iiqax8wbicSalG/mfjzLNnFuul07S+55F8eFJVz+mJB2ly1iwGH
         wh3w==
X-Gm-Message-State: AOAM532MtMb9d7JiVSfVAZGpujKif4i1gYc35vvivb3KR5fNq04rsgF+
	sA1HQCSGO7EvN+sAaX5AzWbttQdD7wHHZZaxZRuidTcaK/c=
X-Google-Smtp-Source: ABdhPJzK+GRGEag79U4LesBoCzl/VpkceFZnc5EUe8tKm+locpHimu3xwhI0QbzXSVlCoK7KCzcU/tFvk9P5Dllaaow=
X-Received: by 2002:a81:106:0:b0:2d0:e682:8a7a with SMTP id
 6-20020a810106000000b002d0e6828a7amr32908312ywb.257.1653467234154; Wed, 25
 May 2022 01:27:14 -0700 (PDT)
MIME-Version: 1.0
From: rouba zeitoun <roubazeitoun@gmail.com>
Date: Wed, 25 May 2022 11:27:03 +0300
Message-ID: <CAHqKquykntg2BXbxMoZd21KPjmF1w_KZ7ahtghdj=MkbDHGdRQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: GEZFVOIHSKCCUGSGSC32E5SJI24EZSOM
X-Message-ID-Hash: GEZFVOIHSKCCUGSGSC32E5SJI24EZSOM
X-MailFrom: roubazeitoun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] unmet dependencies libuhd4.2.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GEZFVOIHSKCCUGSGSC32E5SJI24EZSOM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5415105477745084226=="

--===============5415105477745084226==
Content-Type: multipart/alternative; boundary="00000000000023bdbf05dfd1d7cb"

--00000000000023bdbf05dfd1d7cb
Content-Type: text/plain; charset="UTF-8"

Hello USRP Support

Hope you have a nice day.

I was trying to upgrade my system and i got this message





*You might want to run 'apt --fix-broken install' to correct these.The
following packages have unmet dependencies: libuhd-dev : Depends:
libuhd4.2.0 (= 4.2.0.0-0ubuntu1~bionic1) but it is not installed uhd-host :
Depends: libuhd4.2.0 (= 4.2.0.0-0ubuntu1~bionic1) but it is not installedE:
Unmet dependencies. Try 'apt --fix-broken install' with no packages (or
specify a solution).*

after i tried *' sudo apt --fix-broken install' *i got this error





*dpkg: error processing archive
/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.deb
(--unpack): trying to overwrite '/usr/share/uhd/cal/cal_metadata.fbs',
which is also in package libuhd4.1.0:amd64 4.1.0.4-0ubuntu1~bionic1Errors
were encountered while
processing: /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.debE:
Sub-process /usr/bin/dpkg returned an error code (1)*

How may I solve this problem?

Kind Regards
Rouba

--00000000000023bdbf05dfd1d7cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello USRP Support<div><br></div><div>Hope you have a nice=
 day.</div><div><br></div><div>I was trying to upgrade my system and i got =
this message=C2=A0=C2=A0</div><div><br></div><div><b>You might want to run =
&#39;apt --fix-broken install&#39; to correct these.<br>The following packa=
ges have unmet dependencies:<br>=C2=A0libuhd-dev : Depends: libuhd4.2.0 (=
=3D 4.2.0.0-0ubuntu1~bionic1) but it is not installed<br>=C2=A0uhd-host : D=
epends: libuhd4.2.0 (=3D 4.2.0.0-0ubuntu1~bionic1) but it is not installed<=
br>E: Unmet dependencies. Try &#39;apt --fix-broken install&#39; with no pa=
ckages (or specify a solution).</b><br></div><div><br></div><div>after i tr=
ied=C2=A0<b>&#39; sudo apt --fix-broken install&#39; </b>i got this=C2=A0er=
ror</div><div><br></div><div><b>dpkg: error processing archive /var/cache/a=
pt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.deb (--unpack):<br>=
=C2=A0trying to overwrite &#39;/usr/share/uhd/cal/cal_metadata.fbs&#39;, wh=
ich is also in package libuhd4.1.0:amd64 4.1.0.4-0ubuntu1~bionic1<br>Errors=
 were encountered while processing:<br>=C2=A0/var/cache/apt/archives/libuhd=
4.2.0_4.2.0.0-0ubuntu1~bionic1_amd64.deb<br>E: Sub-process /usr/bin/dpkg re=
turned an error code (1)</b><br></div><div><b><br></b></div><div>How may I =
solve this=C2=A0problem?</div><div><br></div><div>Kind Regards</div><div>Ro=
uba</div></div>

--00000000000023bdbf05dfd1d7cb--

--===============5415105477745084226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5415105477745084226==--
