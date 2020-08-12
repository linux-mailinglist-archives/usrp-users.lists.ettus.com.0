Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2AB2429C3
	for <lists+usrp-users@lfdr.de>; Wed, 12 Aug 2020 14:51:50 +0200 (CEST)
Received: from [::1] (port=59480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5qEL-00032Z-GW; Wed, 12 Aug 2020 08:51:45 -0400
Received: from mail-pj1-f49.google.com ([209.85.216.49]:33712)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <anthonyld508@gmail.com>)
 id 1k5qEH-0002wY-Mf
 for usrp-users@lists.ettus.com; Wed, 12 Aug 2020 08:51:41 -0400
Received: by mail-pj1-f49.google.com with SMTP id i92so2900730pje.0
 for <usrp-users@lists.ettus.com>; Wed, 12 Aug 2020 05:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6YqxNrm0Ck0L+dcriyOIWrCfqplFU2dapFEKXS/fnu8=;
 b=aXSsPljbUEKLWpRq91t8mXWnkK4gEYkP9jCtKWtPA9i/AOQ3wlV/IMwa8t42SJXQpG
 XKkgXkTypo0+kb6Jyr8RCi7lJGrUXAoAu0n6z2JeYkdFTKwM0ySajQOj/dbuN+EXog2f
 oYn1/Cyqn3NB7UwRuKfRYqhiWb8I1+tJ9WHWQPaJ1+UE1ye8Lga4rXAwQ74ZC6KLQnAf
 YP39DrCPZ1/aWXKnmBXgmuy5MnNJDaU8rsZCipfeVD9FHebWWZUCgG6jegY+y3azvTBN
 TXYbUP2MlrJtGGa5DSHMFqJ8SBlUCboJLaXFst7O2SqneR0Iq1ieuSlGh58XPFk07h3d
 Dpcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6YqxNrm0Ck0L+dcriyOIWrCfqplFU2dapFEKXS/fnu8=;
 b=baM9lmG4VxANxSzfilWQAtQWFvQ0pJfmLyQGKyNPGCiuwyVTGC8FBKBOlCOfl7ImNk
 7/e2JtMEx8z4/8ICwfYuYS3v4qUZJYEkpT1TAm5lZNXOLDUXfTXZxMlrIpmVndOQsHwd
 GKQPxzDn78GdGugGXMaYR/ILqol0T9HxisNE/X/PHnKoEKQySaFr8vAXn6Y1atVILuCG
 +Z45KXvn29TDHI05OBz+VZKTzzZpeLt+IROVY2VlMjVfOgjv95ape3gaw97OEG0CPZsV
 qc3AWHLlL216z08gJtCvj7HkFrYmRczGVSGb+wrAnTg20Q5Yq0j2xg7+aMeZgFqdMDh/
 TOLQ==
X-Gm-Message-State: AOAM533k2QqBwX9EKALqOqqLBigEpxEN/4Xd6LR61mlWbGybn6llo+Aa
 mKoBFhQdv7NyEVAUxpBqkQ+ZlQfqFZY+VFOPW+KCtLjXLV8=
X-Google-Smtp-Source: ABdhPJyMuEOnWSrjGRLuZ4PYo3ynHcC9PUk0zchINE8KvUfBHn0HJOku6VAFdDysyDXf5U4A2Y1XGEOJGYzCYSrfGBM=
X-Received: by 2002:a17:902:9307:: with SMTP id
 bc7mr5419300plb.213.1597236660447; 
 Wed, 12 Aug 2020 05:51:00 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 12 Aug 2020 14:50:49 +0200
Message-ID: <CAP+KAYBS2ga8fHhAH7S-ii_ubhdx-6DMv=QB+E-bwAF60UKnPQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Starting with FPGA USRP
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
From: "Anthony B. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anthony B." <anthonyld508@gmail.com>
Content-Type: multipart/mixed; boundary="===============1688808473582557863=="
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

--===============1688808473582557863==
Content-Type: multipart/alternative; boundary="000000000000c4aee005acada356"

--000000000000c4aee005acada356
Content-Type: text/plain; charset="UTF-8"

Hello all,

I recently acquired a USRP B200 and I would like to start developing within
it. I've followed the FPGA Manual :
https://files.ettus.com/manual/md_usrp3_build_instructions.html

So I have now Xilinx ISE and the build files from the FPGA. I was wondering
where to start with these files - can we somehow open them in the Xilinx
Tools ? How can we have a starting view on how the USRP B200 FPGA is
composed ?

Thanks for your answers !

Best,
Anthony

--000000000000c4aee005acada356
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I recently acquir=
ed a USRP B200 and I would like to start developing within it. I&#39;ve fol=
lowed the FPGA Manual : <br></div><div><a href=3D"https://files.ettus.com/m=
anual/md_usrp3_build_instructions.html">https://files.ettus.com/manual/md_u=
srp3_build_instructions.html</a></div><div><br></div><div>So I have now Xil=
inx ISE and the build files from the FPGA. I was wondering where to start w=
ith these files - can we somehow open them  in the Xilinx Tools ? How can w=
e have a starting view on how the USRP B200 FPGA is composed ?</div><div><b=
r></div><div>Thanks for your answers ! <br></div><div><br></div><div>Best,<=
/div><div>Anthony<br></div></div>

--000000000000c4aee005acada356--


--===============1688808473582557863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1688808473582557863==--

