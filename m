Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0553360D398
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 20:33:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15A26380DE5
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 14:33:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666722803; bh=qxZWiwfObXUVoQ9CREw4jkUk7gRyAfRahMR463T2GKk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YX6gy9EoWNzVghaRxKtGRmnigZyVOjjM+D3lgoaoxTlKhHI6fZBAh5NC13hV/PHDJ
	 DB+XuzHocckbiaZ5dY4mLlRfaE0HonWsYV5NxmA1V6TZNdN+8ZmdF+a9/LcI3dzf6F
	 KDUg1xgJohZwMdktWs6unuYcL1oCdEpX6e6j/yp+b2+to6jnsAHs6olRcmb70+ZQ9n
	 VCjrvRK2wFhSZkwS2/SaRL0cT8k5G6X1yOkrGJVnygrnKQ+VFs4neuguAHWrdtR2qO
	 +iJ830sKa4TeeeX0kQQ9njltpqDuQKXsHQlOtg7pq6bEhbY+xz7u5QnA81qsJ8UZvA
	 XV8liFfo3CFHg==
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 68237380D5C
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 14:32:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ourowndomain-com.20210112.gappssmtp.com header.i=@ourowndomain-com.20210112.gappssmtp.com header.b="hcNs1pvd";
	dkim-atps=neutral
Received: by mail-vs1-f44.google.com with SMTP id s28so11948355vsr.10
        for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 11:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tI6vOUmldb4rQrVidyODHZK70go80A/oZiGul+pyMNQ=;
        b=hcNs1pvduzPKB/ax5VFJPIBfapH3Y65bMBUKCaZdeDpRtZ0xU6XpwN+SZEyREj9zUR
         Cb+Wj2ydo3Y6Exp9E5iygM2ZnVUCtsAZYyYm9TKo75PgWdhStf9HFheKHxiFjb9ulJDA
         5vF7YJ4uvEHOoryaLHjTEofkrTL7Md698CQADoUSKi7BWiLKEc0suhQVOhjmcA9C7d3c
         U5CqjAeEVrt5yaz/I87+NjiWEKaoPeRgofoLOx+zIAvU9xi+4lgNvQtw3RjImzsNWbmF
         4XbqpbTVvD+InLOq6LFCIyHPgR8QYLmg4PiCGny4WUAZKMaNcY1XtxMwWODSTckMjlhb
         Kzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tI6vOUmldb4rQrVidyODHZK70go80A/oZiGul+pyMNQ=;
        b=xR9BLpm11Z6u3BZLbKizAH/krlhwYt7E9CXHEoUOue//FNzkqGshk1lvv4nqLviiwV
         pKrVTfkn194Zp5dDYnbYeAWm+4jAxdtrxtYj7Nypt1/Mw+d2CRb/CFvDWW8wqS/ZGXWI
         7lw1dmocrDyT+SGxrZvxYHrb2COHqqrMb6acQH3Hsqo2b/PFx06xUTgaWmPMOGWRTzzq
         qxI3MiBd46dhnJ5CUg2F855vSEQiNWyTAG0rDLxRYGzIcTl87ktYMxIaY7+Pa6kWE4LO
         lEeMM/EvSZi0mlFB5cMTU16j3/bolZO0ruVcf2/kD1K5EFCVIloOJvA78eHKJbwFCf3U
         EEig==
X-Gm-Message-State: ACrzQf1q3Z3ChHse1C5+/AjAiXBZLHTwcAvNIGR8DNjz1k4uRAysyby1
	rtmz/PviYbzZugJ1GAEeWBnrAfibHx2KQ9e8ErgCiP2ZVlU=
X-Google-Smtp-Source: AMsMyM68YDzdW0WPKdI52uZkBiUYZ4VGntqO9crXdMOW3V19au6JI+5oUDBytqXoiFIGpweFvL6nerBXaEpgEWxA8JA=
X-Received: by 2002:a05:6102:9d7:b0:3a6:fdeb:3bcc with SMTP id
 g23-20020a05610209d700b003a6fdeb3bccmr22082732vsi.53.1666722752479; Tue, 25
 Oct 2022 11:32:32 -0700 (PDT)
MIME-Version: 1.0
From: Rich Gopstein <rich@ourowndomain.com>
Date: Tue, 25 Oct 2022 14:32:21 -0400
Message-ID: <CANsNear2pq3y6SP31Z=Y0Qk=aLhS-4qRqBg1g8W6Lk+0nwM_sw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: RZFBENSKN3TMXKKHPJY2BVH53QUF4UHF
X-Message-ID-Hash: RZFBENSKN3TMXKKHPJY2BVH53QUF4UHF
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 GnuRadio upgrade?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RZFBENSKN3TMXKKHPJY2BVH53QUF4UHF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8072500382113733206=="

--===============8072500382113733206==
Content-Type: multipart/alternative; boundary="00000000000099df9005ebe021d6"

--00000000000099df9005ebe021d6
Content-Type: text/plain; charset="UTF-8"

I'd like to run GR 3.9 or later on the E310.  Is there a documented process
to upgrade GR on the E310?

Thanks.
Rich

--00000000000099df9005ebe021d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;d like to run GR 3.9 or later on the E310.=C2=
=A0 Is there a documented process to upgrade GR on the E310?</div><div><br>=
</div><div>Thanks.</div><div>Rich</div><div><br></div></div>

--00000000000099df9005ebe021d6--

--===============8072500382113733206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8072500382113733206==--
