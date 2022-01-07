Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC94487988
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 16:10:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11AA3384572
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jan 2022 10:10:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AUI3wHzD";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 544C538441E
	for <usrp-users@lists.ettus.com>; Fri,  7 Jan 2022 09:48:35 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id j83so17444093ybg.2
        for <usrp-users@lists.ettus.com>; Fri, 07 Jan 2022 06:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=D8HQlumRJ2WBQ7+i4vFINnY9xbdDzZojnDygz0P3n/I=;
        b=AUI3wHzDg4Gy0D2WXM5PJf5ysTbP2rVlzWlMjSoCCi8atWzde63sYJY6rAttqaQh2+
         IFkoUpbbTEAbd5rlRkS18Kfl50tYj7DxbmD0cmPPrqBsp1PLSk41iJCKN1eIKNB7FmkO
         dfMLt/2KEUZ0zDF9Ram4VDeYUnkCI8LeMLkOs6JZkHpAaARsx2wUNEjiS4ZP0otciMK/
         7Zi127OJh6k8ljw4Yv3YJ1TXdamDDuzRhLYbyBCZ6TBVqvgxW/3Az857vpyRXxQveLZn
         VmHHze7SRQ+gLApkg3kWz/uaxLG5VAz92xNG8dgUxFLAt/Irgq53+HUTy+eUjATFe5rx
         EGFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=D8HQlumRJ2WBQ7+i4vFINnY9xbdDzZojnDygz0P3n/I=;
        b=qp5whK5k6+hJIy8kprjeJJe3v1RsNBhprFznCnadahdahrEwz4WYqX4oaTt2ydeNhM
         L9wvYfIOO7fElsxOwXEc8oPPcSkmjOUcakhF84BDMRPGIVC7GrjtcRBeX8f77C0sKJfL
         Zpfwx4Eu84N0aUWeOnjKjhF/yJBnZnoVc7rY6SriVCL2l7EDJRumdGYE4Ny6+ioZPddA
         FHNAScur6ivK3cZ6wCW2RGIlkl2ZmZLdQZuY689vePOTL52tAJowZOWceXmHMVytu2P8
         NZRYELx5K8ziTrsYckq8y9WSoJGTeMSxyeh8ELw66xNW2L6YPaFgs+fTe8pwHd2E5YX4
         hzdA==
X-Gm-Message-State: AOAM533jvhdjeA3pc5raApJUCnCmkwkW2womrlWM/FAsHJMrgmXf07sK
	GUJ82LHEn2a9dzB6PLC2J7OTyQc02ZO/Nzy+/RIALp5pTQJZQucbzwA=
X-Google-Smtp-Source: ABdhPJwsvDEw3Dh+CxlzRaG1q+7qrMhYaRr0e28kQltwXfU9mWq4EzfXqhndJ5qqnSlC9mNTDOmDp3Mfns6fhB8rLTw=
X-Received: by 2002:a25:5041:: with SMTP id e62mr66652134ybb.40.1641566914009;
 Fri, 07 Jan 2022 06:48:34 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Fri, 7 Jan 2022 18:18:22 +0330
Message-ID: <CAA=S3Pv2pWJfa8spuQN8oq7wwU99+W_hzBE3GE4BTSju=jY-Nw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: O6JUN4N6HXS5UIW6C3LGBM6NAJ4PN6PS
X-Message-ID-Hash: O6JUN4N6HXS5UIW6C3LGBM6NAJ4PN6PS
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] why my emails is not found on your forum? my emails is not delivered to usrp-user mailing list?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6JUN4N6HXS5UIW6C3LGBM6NAJ4PN6PS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3448450922868327000=="

--===============3448450922868327000==
Content-Type: multipart/alternative; boundary="000000000000c8e87605d4ff1488"

--000000000000c8e87605d4ff1488
Content-Type: text/plain; charset="UTF-8"

thanks, Marcus D. Leech, Anyway I sent thanks email with the subject root
message.

--000000000000c8e87605d4ff1488
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">thanks, Marcus D. Leech, Anyway I sent thanks email with the subject root message.<div><br></div></div>

--000000000000c8e87605d4ff1488--

--===============3448450922868327000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3448450922868327000==--
