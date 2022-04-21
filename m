Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEA850A2DF
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 16:42:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B0E23841AB
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 10:42:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650552152; bh=BpOAb942NXt/q1VRya/3ISFvderHaRfDl0qEGwX+0lw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=N0+nHNO6paFeBYKHJ/uwQt+TyTpANOkVZH7w96JXbbLVSnrvBWn00hlC/fs26aZgZ
	 +pObX8IbEeuA61kkrOyMZyOXWhNC8YImsMT4ohKf7G5Fl86bR+M/yhQf4o6R6adD56
	 qzn33ESUAoMTB2yTyUsCgi5ioqHX0GQrytbj/m4CpwajsCW1ToBA5kS8JwN9zsnufk
	 Y7YiSLM49eIIyRVqFJWk3YbD66MTAzx1PyFncrsSd+B4181/pi/8YhAfiQyywyKPmG
	 eJug7+iHR9amN09CMMHowT/+E157edlzrUMhl33bc324rOR+hZ4e9wAcoGpzEdS+XQ
	 WmQyMMFFS6wwg==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 6CC3A38489B
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 10:41:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="YlVlx0h/";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id s25so6765224edi.13
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 07:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=MXeiQdDuC1SWAglZwNOXFNlnkV7KFZewv48qIBZGxRo=;
        b=YlVlx0h/iEsuv+S70L/iapzJ3waGMo1TZG4L9Mkf4Ad9Y543+1G9/Tj2eEV/OueitR
         H5GDjjujhyvjb1tpVCjjyZaeFoZt0kQ5M0dBfHuYEuW0N8eJZRCHzZ7SEXFzT9YnDihW
         n2Q/78MwVrbDlAG6hD0quv6vuhf7wT7xie0OskeNYlmiDgu8xiphv6eqp9GUMsWsFZke
         Wrwn0YDa68VsIqbLUiESjNOqFjPNB05e17qGSSp42Ne4SUToiUU37bMsTbGMi1K4jLDR
         hpHafIlno6bSNImazy76qL+u2+Pv4C6XTISdo9vtVtsDEAYS3K/WKeWhQEkrHvZsIQ2N
         NVhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MXeiQdDuC1SWAglZwNOXFNlnkV7KFZewv48qIBZGxRo=;
        b=Am4/p2+iH5fSUvMYw/O6iL2+19xNn9UImWpEMYePTyNPukytb1kuKGps+bhMZE2fTO
         Yqf5kZ/cUNUUuZbWYlmxznWxFvHjPY5aAdhaUZNR/zdviLOOaoTwcfC9X8ThwsY9epg8
         tb7/+16wwRcBMqR54OK0qcnb/vwqMw/N+F65z1CNemPahpuVfH6u8Mb99nCFXttxe0jM
         xlBPI1ia8rdAKF9FzMyfsF07bKHvsVq+jXY3IEBsW5OWUkcfnBDeFTUsV4smoEyQMFta
         t5SRAPZR8t8HNQ81KtVKMSbXDFTOjt+4D0UXQsMeAmcFwDpPsWpWDwlB410hkR0g+XNm
         iQIA==
X-Gm-Message-State: AOAM5329CHqtE8Gav7qw9VvMhbrH8aYqud7W+xGEpJBKECWdp2yS03rI
	qq8MZPSYH6Fz9b8G4mTk8Wnbi3nptncW1VIoCoeEYuVRLRXtetiW
X-Google-Smtp-Source: ABdhPJxgsd+MR/WjVQ/e5+HVJvo0jRZmJISnhZpx+ajUu/0FY5jHy+7RJaz0NUlxQzhkmsZZiRw/YoAESw6J0O2VtHg=
X-Received: by 2002:a05:6402:190a:b0:424:890:e4e1 with SMTP id
 e10-20020a056402190a00b004240890e4e1mr12487320edz.169.1650552081489; Thu, 21
 Apr 2022 07:41:21 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Rossetto <aaron.rossetto@ettus.com>
Date: Thu, 21 Apr 2022 09:41:10 -0500
Message-ID: <CAAg5+MxN_xH+R6T8zcgpjHZ+eDwrU3NCmWtukuU2grbbXFqcog@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BHLBBXO32P6RER6NC5USY4FC324T3SUP
X-Message-ID-Hash: BHLBBXO32P6RER6NC5USY4FC324T3SUP
X-MailFrom: aaron.rossetto@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.2.0.0 released!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BHLBBXO32P6RER6NC5USY4FC324T3SUP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8684908983607425398=="

--===============8684908983607425398==
Content-Type: multipart/alternative; boundary="00000000000080314305dd2b1a16"

--00000000000080314305dd2b1a16
Content-Type: text/plain; charset="UTF-8"

Hello friends of UHD,

On behalf of everyone at NI/Ettus Research, I am pleased to announce the
release of UHD 4.2[1], the latest version of the USRP Hardware Driver! UHD
4.2 brings new enhancements to the USRP X410, notably:

* A new shipping bitfile, X410_CG_400, enabling 100 GbE 4x4 streaming
support at 491.52 MS/s. An app note detailing system setup and results is
forthcoming.
* X410 DRAM record/replay support. This allows the use of the DRAM in a
custom RFNoC application design to capture data from the radio front end or
for waveforms to be uploaded from the host to be generated by the radio.
* X410 GPIO support, including timed commands.

Of course, there are also many bug fixes and improvements across the entire
range of supported USRP devices. Be sure to check out the changelog at [1]
for the full list. And as with any release, let us know of any problems by
filing an issue against UHD on the GitHub repo[2] or by posting to the
USRP-users mailing list.

With very best regards,
Aaron

[1] https://github.com/EttusResearch/uhd/releases/tag/v4.2.0.0
[2] https://github.com/EttusResearch/uhd/issues/

--00000000000080314305dd2b1a16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,sa=
ns-serif">
<div style=3D"font-family:arial,sans-serif" class=3D"gmail_default"></div><=
div class=3D"gmail_default" style=3D"font-family:arial,sans-serif">Hello fr=
iends of UHD,</div><div class=3D"gmail_default" style=3D"font-family:arial,=
sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ari=
al,sans-serif">On
 behalf of everyone at NI/Ettus Research, I am pleased to announce the=20
release of UHD 4.2[1], the latest version of the USRP Hardware Driver!=20
UHD 4.2 brings new enhancements to the USRP X410, notably:<br><br>* A=20
new shipping bitfile, X410_CG_400, enabling 100 GbE 4x4 streaming=20
support at 491.52 MS/s. An app note detailing system setup and results=20
is forthcoming.<br>* X410 DRAM record/replay support. This allows the=20
use of the DRAM in a custom RFNoC application design to capture data=20
from the radio front end or for waveforms to be uploaded from the host=20
to be generated by the radio.<br>* X410 GPIO support, including timed comma=
nds.<br><br>Of
 course, there are also many bug fixes and improvements across the=20
entire range of supported USRP devices. Be sure to check out the=20
changelog at [1] for the full list. And as with any release, let us know
 of any problems by filing an issue against UHD on the GitHub repo[2] or
 by posting to the USRP-users mailing list.<br><br>With very best regards,<=
br>Aaron<br><br>[1] <a href=3D"https://github.com/EttusResearch/uhd/release=
s/tag/v4.2.0.0">https://github.com/EttusResearch/uhd/releases/tag/v4.2.0.0<=
/a><br>[2] <a href=3D"https://github.com/EttusResearch/uhd/issues/">https:/=
/github.com/EttusResearch/uhd/issues/</a></div><div class=3D"gmail_default"=
 style=3D"font-family:arial,sans-serif"><br></div>

</div></div>

--00000000000080314305dd2b1a16--

--===============8684908983607425398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8684908983607425398==--
