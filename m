Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CFA30B339
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 00:16:41 +0100 (CET)
Received: from [::1] (port=39272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6iQt-00059W-5Y; Mon, 01 Feb 2021 18:16:35 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:39391)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l6iQp-00054X-0s
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 18:16:31 -0500
Received: by mail-oi1-f176.google.com with SMTP id w124so20770821oia.6
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 15:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=Xpwm6G5lWLnixAiRIFzzcOAhS4/M4ydYRvJT/lRg9hA=;
 b=kcTGyMM54rc6rZnu7n6UzVwfiZd5M4uFYpljpeWOMiv7VO1tJhcatuFetSTnzvEfVZ
 HtOofgDBRRXso71rsGWyC9VkhjZkDBmp1MMXp8co94aHb335yoivUgGmZ3w0k4bRP2kh
 1/S+R9v4XyffY8peZOJxYHjNi8VtzTIuxWjnWd4agcfZlVrdlma5vhdErk9caGrtJ/fM
 /yHl9bj1I03pEIgO3BZ0lAb1pht6Lm5MWYk9Qr3bTAMb9Dst7zFFePpTUJMSckEvjyt/
 8v2S4mHpDIQqNvHouiu37H3cgtjxuBp2V02MdZLk1b+wWBKtgrsoxKPfFRANwzylWIqz
 f1Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Xpwm6G5lWLnixAiRIFzzcOAhS4/M4ydYRvJT/lRg9hA=;
 b=qEtTuyAgxd2Kir7woFLbmrmPgn44MqW53jjp6U72l159/DEHYAAPMDzYc6M9pcbEsZ
 oV2FtqPMzsb3HNJQOxHKucHc3F3MExEP2Ll89z+ybIoGDw9X+neO3XKo9cdFumPWEhjm
 SmQA6DkKu4LRXW+iWrsU8Zs01+VsSlRJdZk+Rktq0/M4mr1ru/z8mGxUvaEPKZAScufg
 kQwsCv25tvw4TtE66l0MzC45xkSZk7X1X87ih74SSmcxv9ODzv5qZjsmySIQnS6QehD5
 G1mCMmHReK9tz9OD4IB2cenhxZ5jipNxSqbMnYMaTlNqelbOlH6SnC9k1Y63rxonH1bv
 3Wjw==
X-Gm-Message-State: AOAM530QGKzxuZ+MYTiyCQ/DoYF90/MIOqa5k2FW4SHXQyp18lII0jiq
 Y85rH4M7bFxfwv16vOegj1QqT+3IQDFCmzKJXxHYaDI1BluL+g==
X-Google-Smtp-Source: ABdhPJwi+ruSe86WKhyYiugFvIhaNKlz66fjs5GBRZWV4SPYMTJfCpP/b4eaABHfc5ZZv9QlM0xgOU83oLNsViVH+Qk=
X-Received: by 2002:aca:ea0b:: with SMTP id i11mr834588oih.33.1612221349786;
 Mon, 01 Feb 2021 15:15:49 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 1 Feb 2021 18:15:39 -0500
Message-ID: <CAB__hTQTdZiv5WNa-wEU7vUPZMC9+_+LQP0j36ijaEgM4jHyJw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] DPDK troubles (invalid ELF header loading dpdk library)
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
Content-Type: multipart/mixed; boundary="===============2430500611042737919=="
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

--===============2430500611042737919==
Content-Type: multipart/alternative; boundary="000000000000dac1d605ba4e88c6"

--000000000000dac1d605ba4e88c6
Content-Type: text/plain; charset="UTF-8"

Hi,
I have 2 systems (each with host PC and N310) for which I'm having similar
issues in trying to get DPDK up and running.  After going through the UHD
Manual DPDK instructions and DPDK app note, I am past the point at which
the "dpdk-devbind" seems to work fine, but I get the following error when I
run benchmark_rate.

I am running Ubuntu 20.04.LTS and installed DPDK 18.11.11 by
downloading/building from source. I built UHD (latest 4.0) from source and
it seemed happy finding DPDK and building with DPDK support. It seems like
a compatibility issue, but I can't figure it out. Any suggestions?
Rob

// *** this is the error on System 1
EAL: /usr/local/lib/libdpdk.so: invalid ELF header
EAL: FATAL: Cannot init plugins
EAL: Cannot init plugins

// this is the error on System 2 (nearly the same but different library)
EAL:
/usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pmd_ark.a:
invalid ELF header
EAL: FATAL: Cannot init plugins
EAL: Cannot init plugins

--000000000000dac1d605ba4e88c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I have 2 systems (each with host PC and N310) =
for which I&#39;m having similar issues in trying to get DPDK up and runnin=
g.=C2=A0 After going through the UHD Manual DPDK instructions and DPDK app =
note, I am past the point at which the &quot;dpdk-devbind&quot; seems to wo=
rk fine, but I get the following error when I run benchmark_rate.</div><div=
><br></div><div>I am=C2=A0running=C2=A0Ubuntu 20.04.LTS and installed DPDK =
18.11.11 by downloading/building from source. I built UHD (latest 4.0) from=
 source and it seemed happy finding DPDK and building with DPDK support. It=
 seems like a compatibility issue, but I can&#39;t figure it out. Any sugge=
stions?</div><div>Rob</div><div><br></div><div><font face=3D"monospace">// =
*** this is the error on System 1</font></div><div><font face=3D"monospace"=
>EAL: /usr/local/lib/libdpdk.so: invalid ELF header<br>EAL: FATAL: Cannot i=
nit plugins<br>EAL: Cannot init plugins<br></font></div><div><font face=3D"=
monospace"><br></font></div><div><font face=3D"monospace">// this is the er=
ror on System 2 (nearly the same but different library)</font></div><div><f=
ont face=3D"monospace">EAL: /usr/local/share/dpdk/x86_64-native-linuxapp-gc=
c/lib//librte_pmd_ark.a: invalid ELF header<br>EAL: FATAL: Cannot init plug=
ins<br>EAL: Cannot init plugins<br></font></div><div><br></div></div>

--000000000000dac1d605ba4e88c6--


--===============2430500611042737919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2430500611042737919==--

