Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 247B9422077
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 10:17:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 031F538419F
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 04:17:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GeVccTJY";
	dkim-atps=neutral
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C98F383E2F
	for <usrp-users@lists.ettus.com>; Tue,  5 Oct 2021 04:16:51 -0400 (EDT)
Received: by mail-lf1-f48.google.com with SMTP id x27so82847366lfu.5
        for <usrp-users@lists.ettus.com>; Tue, 05 Oct 2021 01:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=9223MKahtc7O9rpTJ+sSrbGxkcuN96BXAyoLrMFa6nY=;
        b=GeVccTJY1fwBg7UkBQdZOAIk4oSd2Y2szbGo+Ij4BCn2pGbpD0eK5becENoYZgfEyQ
         Du62Fb6LlSvIEAdLfs115aNK9OFKqEKQfKKGZ6z5xDaxnnZrQ8+4iqs+zm8fJNJcY5MP
         0+XKnsqf3cSZ4VI1ymADrTcqcL0NoSzs5IST/msrM6ov69BmuwSWhl7da4uEHIk4/APF
         Eco0O7z7lC4AwW3/SES5fMCL6UOLaFhfKjo/Cy98zqixalPrDAq/5jCei/oE3wvWMRE/
         iHD7dHPKidAy//N/QSNQO/+KLGOA48Y0al16Hv9hOUc93n8HhAVmNt0Sldo/uyLDiJJ7
         BmQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9223MKahtc7O9rpTJ+sSrbGxkcuN96BXAyoLrMFa6nY=;
        b=zf4He6O8taxHt/QL0j0Vzt8BgPSVaB/xIauF2OtCJoIupFdK3xEoEP5KuRkgr6H8j3
         3ddOOauU39clqGWaUejUBjJGfdkwgz40rO/jZJR70tl26NtWzvj3iMcFj5yx+3p7wI76
         W8iSANlexZqKyXd08GN2pgvpV670XAnHdnbYy7LsFRaAZ1l9iE+KBF0ssBnSc03fSJtB
         DfDAwg1BTXTyLOq1s7Ky6vOux9FUQRrQ7ZZy9/jp6x/XV1M8VbtbHwlD/KxZeCEBood3
         QlZdHDCb5eo2U6DgQv4eH91X+Tv83wCUeGstQIVkTqWb0hEUuwmk/2Fz9kc0wXh+T+pF
         TkwQ==
X-Gm-Message-State: AOAM530dPTy438E+xV9TKDz6+piMoQ92XSuihiJVU1b2kkQRLYYlnwiS
	2fA+aX5eG5I4F/x+4vHheZeVKSapYHWLfegRB7qUGJOx/ZE=
X-Google-Smtp-Source: ABdhPJyetQ4y56LVN+HJvM1aFoSxbNCnoBytRozDqp+1Fp3IHYbX3IniUcsrU+Crm2+4BLj9+F5UugMJeYc4bMyC/iI=
X-Received: by 2002:a2e:7c0c:: with SMTP id x12mr21514459ljc.186.1633421809866;
 Tue, 05 Oct 2021 01:16:49 -0700 (PDT)
MIME-Version: 1.0
From: Huang Wei <weizardry@gmail.com>
Date: Tue, 5 Oct 2021 09:16:39 +0100
Message-ID: <CAAopBk9+n6aMqQ+n27nezBeXc9AvtT89euJRWHDo39RcfzSLAw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7L2IMJTQFJX46KNVH2TR3DSEKWWH4DI6
X-Message-ID-Hash: 7L2IMJTQFJX46KNVH2TR3DSEKWWH4DI6
X-MailFrom: weizardry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reset set_start_time of USRP at runtime
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7L2IMJTQFJX46KNVH2TR3DSEKWWH4DI6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5821557728105887714=="

--===============5821557728105887714==
Content-Type: multipart/alternative; boundary="000000000000bedbbb05cd96a66b"

--000000000000bedbbb05cd96a66b
Content-Type: text/plain; charset="UTF-8"

Hello group,

I am running USRP in GRC. I would like the USRP to  stop and restart
transmission at specific times. so I wrote a function in the top_block
class like:
self.stop()
self.wait()
self.usrp.set_start_time(an absolute time)
self.start()
It doesn't work. Also I tried  1) add clear_commnad_time() and
set_command_time() before; 2) disconnect(), set_command_time() and connect
(); 3) usrp.stop(), usrp start(). All these methods don't make sure USRP
will restart at the time I want.
Is there any command that can achieve this purpose?

Thank you very much!

Best regards,
Wei

--000000000000bedbbb05cd96a66b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello group,<div><br></div><div>I am running USRP in GRC. =
I would like the USRP to=C2=A0 stop and restart transmission at specific ti=
mes. so I wrote a function in the top_block class like:</div><div>self.stop=
()</div><div>self.wait()</div><div>self.usrp.set_start_time(an absolute tim=
e)</div><div>self.start()</div><div>It doesn&#39;t work. Also I tried=C2=A0=
 1) add clear_commnad_time() and set_command_time() before; 2) disconnect()=
, set_command_time() and connect (); 3) usrp.stop(), usrp start(). All thes=
e methods don&#39;t make sure USRP will restart at the time I want.=C2=A0=
=C2=A0</div><div>Is there any command that can achieve this purpose?</div><=
div><br></div><div>Thank you very much!</div><div><br></div><div>Best regar=
ds,</div><div>Wei</div><div><br></div></div>

--000000000000bedbbb05cd96a66b--

--===============5821557728105887714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5821557728105887714==--
