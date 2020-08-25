Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34884251F94
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 21:10:17 +0200 (CEST)
Received: from [::1] (port=40452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAeKi-0006hv-BL; Tue, 25 Aug 2020 15:10:12 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:36116)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1kAeKf-0006ao-16
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 15:10:09 -0400
Received: by mail-qv1-f41.google.com with SMTP id v1so6035601qvn.3
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 12:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6c9fZRyvReUvpSf/JlmhvdwgWzyzSN2rGzgvtPWXHl8=;
 b=IPUc/ykzVcfY5PVPSQxGDTznH95IGxZa8fPUWs7EKKy2OcqTVSwW7XQQon5ku5Aknr
 X7tOzRXfdfSzIcs4sAMpJUCl09OC52Z0pistULm8PAPYsNFSoQbXsJfMFzju1+a49Spt
 YqnyjB/hZmN/ZDtAHj0nPDdpyCkvmihweJmjaGzkOcokuVZqS0xA2wDhBpvPtBtQiHpX
 NpiUxDYhdGpPk0P6WRkflRbtoCaVNICZJj9ldh26/75tyfFZ4/frGR8rfuDmsaJmT9a4
 yIfx9CChPibZRGVyxDbUu5JqavB1AWAziQvwQ55EgLUVHS0cV/9rPmYmcAcxy6Zrc81D
 vY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6c9fZRyvReUvpSf/JlmhvdwgWzyzSN2rGzgvtPWXHl8=;
 b=TbA6gRUePdpPGSWM/UYZ2vQU0IAFIf4haCFGHHGpYSK4eetitdCDxw3yb0KRVagOIU
 hDjiHuyFBnKeHeVhSUBdcd9cPTFJ3Tokw0e0x68421dW8qi249TA+EdI1hTN2lcrONRn
 9aC6Kp+8HmPkbtG7SHPQp1KiwnFMsIg67NJ8r8RH6rw25tDl6xcQ1TePcK+IpK7kszdz
 usbm6rHk1p8M2zX84rC3BLcBmXF4s/fL2AoLr4mzd8fY1S+VqewjHWw5ummnp5GKLJ+x
 FdHjS97pbxSj57z5QEIcKqx+b67ObF/5sLGKT6DESAJJQYlcZ/UFMWhR6mzCnQ5i8ASM
 EPOw==
X-Gm-Message-State: AOAM533cJkL5MtZVV71Rq5pkYVqp3PehE2eIcHqmeCUbvUGedCfchVsb
 m2Jf+BGYDAQmBz0ug5R+IpFNgRV74Mjxc/l+XVOQVFSy0bY=
X-Google-Smtp-Source: ABdhPJwf7KziGm2o4ZUPrbwxPiTmjhoRKG6HZGZjv7U9MIq2gzG24XpVnhHXQw9lHH5nLyNskAdCOfnKT8SW3X11iuM=
X-Received: by 2002:a0c:f84b:: with SMTP id g11mr11027696qvo.184.1598382568211; 
 Tue, 25 Aug 2020 12:09:28 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 25 Aug 2020 21:09:16 +0200
Message-ID: <CA+w2ZysdtLyTCsbY4GaLKGqJ1vGUnV=r8_A5Kzv2LVa8pXfWWA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] List of filters and where they are located
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============0055664282074835665=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0055664282074835665==
Content-Type: multipart/alternative; boundary="0000000000003188ce05adb87194"

--0000000000003188ce05adb87194
Content-Type: text/plain; charset="UTF-8"

Hi, I am using a B205 and I'd just like to know what are the
difference filter stages (analog and digital) seen by the signal (both Tx
and Rx), in the AD936x and in the FPGA.
Another way to help me, should be to have a description of the filter that
I can address with the filter.hpp functions : Can I address and change
filters behaviours that are part only on FPGA or also the AD9361 filters ?

Many thanks

David

--0000000000003188ce05adb87194
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I am using a B205 and I&#39;d just like to know what a=
re the difference=C2=A0filter stages (analog and digital) seen by the signa=
l (both Tx and Rx), in the AD936x and in the FPGA.<br><div>Another way to h=
elp me, should be to have a description of the filter that I can address=C2=
=A0with the filter.hpp functions=C2=A0: Can I address=C2=A0and change filte=
rs behaviours that are part only on FPGA or also the AD9361 filters ?</div>=
<div><br></div><div>Many thanks</div><div><br></div><div>David</div><div><b=
r></div><div><br></div><div><br></div></div>

--0000000000003188ce05adb87194--


--===============0055664282074835665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0055664282074835665==--

