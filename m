Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C63D57ECACC
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 19:55:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD3CC38493E
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 13:55:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700074508; bh=YzI2zjaqIQ3j1F8JaN4b/gLtOK6gAGbTUu18i7G/bTA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=prJSnAlpiVkytl/Q4A5aB1HdeqLW/EKrYKv6I5bEiL8DH5Ug73ps3Ud7JbeN+yyZ/
	 1rES1tJTbZ9SJxMkgNvvTp9WQgdaPdw/5qWc22Vd2RV+lKJPDNO7F4983mHqIuKejF
	 kyCkK386YRaWREvu/9t8wYOeYTSkxVE6Le3Blv+0bbIneEews5IclPdbCBo6HjVIUo
	 Fpk0rHYcRjRRD1C2bn/MfSbgo5nqSdMvz/qY2g+rvHgYy9WpxWhpGqngne/9KdgBjD
	 lqbHZWlWkCLvZZsi12sLnvmNgyQQcDHeEigTLT2Yg8T0slKamvCrW6kwFOTp/6YZvO
	 BX3dnyKrbGqvA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FCC5384921
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 13:54:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700074491; bh=enMCEwEAUIT8cT9IAGkqgWGQTbtuqWz5aDJxCOKZpQU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xDqz1fvOq7PfnPLVuAndssYvt4wWfyyaqBGaoY8gYswMEjPRcyY61C9k1phcbm73k
	 629zhgb0s33/jjBnqCMcfJaq21sY74TEGmuXhVRZKRHejNGO4XEckJBG9II9+qWNqT
	 C3wX/IDJ3wtZX/lC+mgDLTX9ST4UvTmg9+2IXiN9JElcPC7NwqKlUDugG9GQiEufmx
	 1cxTx8hlYt+MJQHw90x56kj8iBrAHVnNB8eaoBtvSlr/7Wfpc1O1wHg1jwscYuknNq
	 HIZLmKkmQ/K/iklRT8jEHp1sehs0oqV019qFDdL/zuyn1eUdA8ymdC3M+DIvIwOj8x
	 3cqd5s4E2ulgQ==
Date: Wed, 15 Nov 2023 18:54:51 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c65bc559-49ab-4b82-8545-40580957906e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: UWZAT75VPAS4ONSMVQSZL5VJ23UFLAOA
X-Message-ID-Hash: UWZAT75VPAS4ONSMVQSZL5VJ23UFLAOA
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UWZAT75VPAS4ONSMVQSZL5VJ23UFLAOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8326674845364328255=="

This is a multi-part message in MIME format.

--===============8326674845364328255==
Content-Type: multipart/alternative;
 boundary="b1_G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I do have access to two x410s. The bitstream I tried to upload on this cu=
rrently none working device was CG bitstream, when prior to this it was a=
n X4 bitstream. Im obviously hesitant to try something similar on the wor=
king device right now, but my current guess right now is that ssh is not =
starting.

For example, if I use `systemctl -l --type service --all|grep ssh`   , i =
get the following for the non-working and working x410s

Non-working:

\* sshd.service                           not-found inactive dead    sshd=
.service                               =20

sshd@0.service                         loaded    inactive dead    OpenSSH=
 Per-Connection Daemon              =20

sshdgenkeys.service                    loaded    active   exited  OpenSSH=
 Key Generation

Working :

=E2=97=8F sshd.service                                      not-found ina=
ctive dead    sshd.service                                     =20

  sshd@3-192.168.10.2:22-192.168.10.1:45278.service loaded    active   ru=
nning OpenSSH Per-Connection Daemon (192.168.10.1:45278)

  sshdgenkeys.service                               loaded    active   ex=
ited  OpenSSH Key Generation

It appears the sshd session was able to start on the working device, but =
for whatever reason-even after re-flashing- the non-working device is una=
ble to start ssh, though I am not sure how to manually start it.

I have tried using `systemctl` to start it, but I just get met with an er=
ror that the sshd service is not found

--b1_G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I do have access to two x410s. The bitstream I tried to upload on this c=
urrently none working device was CG bitstream, when prior to this it was an=
 X4 bitstream. Im obviously hesitant to try something similar on the workin=
g device right now, but my current guess right now is that ssh is not start=
ing.</p><p><br></p><p>For example, if I use <code>systemctl -l --type servi=
ce --all|grep ssh</code>   , i get the following for the non-working and wo=
rking x410s</p><p>Non-working:</p><p>* sshd.service                        =
   not-found inactive dead    sshd.service                                <=
/p><p>sshd@0.service                         loaded    inactive dead    Ope=
nSSH Per-Connection Daemon               </p><p>sshdgenkeys.service        =
            loaded    active   exited  OpenSSH Key Generation</p><p>Working=
 :</p><p>=E2=97=8F sshd.service                                      not-fo=
und inactive dead    sshd.service                                      </p>=
<p>  sshd@3-192.168.10.2:22-192.168.10.1:45278.service loaded    active   r=
unning OpenSSH Per-Connection Daemon (192.168.10.1:45278)</p><p>  sshdgenke=
ys.service                               loaded    active   exited  OpenSSH=
 Key Generation</p><p>It appears the sshd session was able to start on the =
working device, but for whatever reason-even after re-flashing- the non-wor=
king device is unable to start ssh, though I am not sure how to manually st=
art it.</p><p>I have tried using <code>systemctl</code> to start it, but I =
just get met with an error that the sshd service is not found </p>

--b1_G4WoAsBKwV6sDkkMhozMRarTEkfNz1TqJTT3KfWU4--

--===============8326674845364328255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8326674845364328255==--
