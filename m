Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C80F287C1B
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 21:11:38 +0200 (CEST)
Received: from [::1] (port=51956 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQbKB-0003V7-Ir; Thu, 08 Oct 2020 15:11:35 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:36012)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kQbK7-0003NM-Mu
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 15:11:31 -0400
Received: by mail-oi1-f175.google.com with SMTP id u17so7510890oie.3
 for <usrp-users@lists.ettus.com>; Thu, 08 Oct 2020 12:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=PzibT8UG81rKH/hvdoMZSLWV29c3gDsuBojrzEHRUP0=;
 b=HWmoDj7OJSD/IjDHHdNljp0w/jEEUeDMRxLy5VRPPFLmB95apRF1vSLmtGQXTn0Bbx
 dzKulli5BbQ9dQCJY+tEVVjcver+oMp5Z2EqjCe2lltnCpyYa4MI7ycxLDRUUD1idKcg
 mOJtG6fKTf4PzJi0RTnp+Q8dJLmxKAaNBQ8rHA8s5LQfifURm53vhhMHN+PB6r0GqfD3
 QFWM3jB/wqCLZGeUuuIH3ERXpAZeaItBESZs9/loqut4AKJZQWux9hHnpD8OuWVG+u9k
 2OC6YFBzc+g5YpZq+2tGkVwo+Kc+Q/Mg+Ka0ia20Om2dlCHkLVL0vZZ/PL9fEdHQun0/
 V2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=PzibT8UG81rKH/hvdoMZSLWV29c3gDsuBojrzEHRUP0=;
 b=ZZdJLiIjRebkdB+dWMWD+1jA3kaK3UKYyJnVQimiF0XY5tb9xcaLOIHWH3xmeE40O0
 gMNkljotic4n4GmTA1Qwhd+QuITBYtLA+MevThLOWify0WpsaWcBN/B+R+E6iRLbJPNf
 JFzua+BKSAudiuZ20Hk1p6kXKBuxdKxSGyMkWaJhyf0a91JMof9yBwTkHx+wsHK2Zhs9
 KsVyJAkGyYJBPXRDbi5DH+3VKRFbnMGAquY0jZ/dxWh3S9XFbgCg8dbCw20xXfN1rkyv
 /U6I5+k6lxyFLT/WQcnZZAFTaboF/3TIQNAry7PqfEFEnkpfTiyDSP/t69L+odtCF/4M
 K5Ig==
X-Gm-Message-State: AOAM533o1ZvbgALFdonL0KSu9cq4/ml9IZRpaQl0K2okW+SWQp3EloLy
 5DkkOeErpU1CI84Za2TzsNHbva/UIxqNp6E4/Lp+kDgPlZdBBQ==
X-Google-Smtp-Source: ABdhPJwkdFf557rI9wbvJu8v39yJVPWJqq/5Cob74mSlUyaKki/V00dmweE65UnLFQEQU/AeRh0e+KkmqmHvWqrNbUk=
X-Received: by 2002:a05:6808:216:: with SMTP id
 l22mr203442oie.124.1602184250546; 
 Thu, 08 Oct 2020 12:10:50 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 Oct 2020 15:10:39 -0400
Message-ID: <CAB__hTQ66fKZiDJLS+JskvOOmJ7BRatHLTSoZozoLbP+L1iKLA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] New mender instructions?
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5383818199431950549=="
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

--===============5383818199431950549==
Content-Type: multipart/alternative; boundary="0000000000001e976905b12d979b"

--0000000000001e976905b12d979b
Content-Type: text/plain; charset="UTF-8"

Hi,
What is the new mender command to use on the N310 under UHD 4 file system?
The -rootfs option from the following instructions is not a valid option.

root@ni-n3xx-serial:~# mender -rootfs /home/root/usrp_n3xx_fs.mender

--0000000000001e976905b12d979b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>What is the new mender command to use on the N=
310 under UHD 4 file system?=C2=A0 The -rootfs option from the following in=
structions is not a valid=C2=A0option.</div><div><br></div><div><pre style=
=3D"font-family:monospace,Courier;color:rgb(0,0,0);background-color:rgb(249=
,249,249);border:1px solid rgb(221,221,221);padding:1em;white-space:pre-wra=
p;line-height:1.3em;font-size:14px">root@ni-n3xx-serial:~# mender -rootfs /=
home/root/usrp_n3xx_fs.mender</pre></div></div>

--0000000000001e976905b12d979b--


--===============5383818199431950549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5383818199431950549==--

