Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C20207B30
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jun 2020 20:04:03 +0200 (CEST)
Received: from [::1] (port=38172 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jo9ke-0000Ez-Dn; Wed, 24 Jun 2020 14:04:00 -0400
Received: from mail-il1-f172.google.com ([209.85.166.172]:44291)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cherif.chibane@gmail.com>)
 id 1jo9ka-0000AI-RF
 for USRP-users@lists.ettus.com; Wed, 24 Jun 2020 14:03:56 -0400
Received: by mail-il1-f172.google.com with SMTP id b13so2905585ilq.11
 for <USRP-users@lists.ettus.com>; Wed, 24 Jun 2020 11:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=0eY0aHHn8snuChjldBlrweTuPhheu+1uHlKJbZnnno4=;
 b=ccfJhHvO7KuSft9bS4cAm+3b4x8Ztpd9818oIdgqPQfnfMUXlpm5T8d9hHDc6U0ncP
 L2vU5uPXAWAPTipOLNqY2BAxTrtDcrQzyT/Yv9AVAwPr3DnoNsatZ06hCfwV6KUutpox
 qVggZWGKEIeUVmIt87OIGh0tzTCYUH14iGWZDgcwI3JNLhABHq90oEnplbLQ9T3ZfdIv
 c1DZSOm0d5YIAmBQF4NML1bH6rqiC6T6hQkslGGaFMXntxuWNN9mjtY/NsoZLOnv2Mtr
 jJIFaKP0qa70ERMIFN1D9fhkDoLAlo3VyawKPpzq6Te6J/UQhl1hBF9DACJIZFouCp50
 zpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0eY0aHHn8snuChjldBlrweTuPhheu+1uHlKJbZnnno4=;
 b=HSFl+Ei+Ahpsgl0Cwdk15gRgQdBkIxkw0VqtkR482ufvtrA2kAPNGLjDUSVyRKyuky
 x5L0Cu1Kahbo8E97+UwUMqg7iwqQ8J2OFLLsvGQGDyIrO3lfSbVVJU84rBy1veNfeY6z
 bEjCUMWfV9KaN/S0dh+JTp5DmrdE4yDZEeWd3Uo18kgPhhoLpi23xq5Ldwj2YkCmqbAa
 IqepkpKRMPpPp/eYfDjuOqpXST9QCRVjVWjGZ0II+UkiQJsIlo5qoNg7nY25sCMndl7J
 yXwCK6TwIKWcxn/z6OFcyYkrsuW3sfy8kaFD8aG29xtVth3rC7ADTa7My1pMvcWLkspQ
 cT3w==
X-Gm-Message-State: AOAM530VpVOfOOF8cfM2REo3y4yA+zHamTzbkR2Ba362bqVccxbHx0X7
 KduE4WyuoQFGrfH2wRVgd5rcRbwTZ1GortmJ8m+fv6HGcLg=
X-Google-Smtp-Source: ABdhPJzHKERROQEqyPfpMrSFChD/vqvwrThHQg2lZkdvwk1s5cUEELXr8//p79LKEes7L87l9oQIs23JNgvlHPdLdTk=
X-Received: by 2002:a92:502:: with SMTP id q2mr656792ile.61.1593021795837;
 Wed, 24 Jun 2020 11:03:15 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 24 Jun 2020 14:03:05 -0400
Message-ID: <CAN6+RzkMFo8AtOYqM=i-56KKBkeZ_ss1nogCmDLpt2cY5K5FRg@mail.gmail.com>
To: USRP-users@lists.ettus.com
Subject: [USRP-users] gnuradio-companion can not find RFNOC blocks
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
From: cherif chibane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cherif chibane <cherif.chibane@gmail.com>
Content-Type: multipart/mixed; boundary="===============7660016479376633867=="
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

--===============7660016479376633867==
Content-Type: multipart/alternative; boundary="00000000000042adf105a8d84a94"

--00000000000042adf105a8d84a94
Content-Type: text/plain; charset="UTF-8"

Hello,

I have just installed RFNOC using the app note:
https://kb.ettus.com/Getting_Started_with_RFNoC_Development

I used the manual way because I was having some weird problems using
Pybombs and I am using X300 under Ubuntu 18.4. I can successfully use  all
the UHD commands, load FPGA with new images etc.I can also successfully use
the Gnuradio-comapnion gnuradio blocks.

But when I use gnuradio-comapnion graphs with  RFNOC blocks, it can not
find them.
Here is the error:
Loading: "/home/rfnocdev/rfnoc/gr-ettus/examples/rfnoc/rfnoc_ddc.grc"
Block key "variable_uhd_device3" not found
Block key "uhd_rfnoc_streamer_ddc" not found
Block key "uhd_rfnoc_streamer_fifo" not found
Block key "uhd_rfnoc_streamer_radio" not found


Any ideas What I am missing here.

Thanks,
Cherif

--00000000000042adf105a8d84a94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have just installed=
 RFNOC using the app note:</div><div><a href=3D"https://kb.ettus.com/Gettin=
g_Started_with_RFNoC_Development">https://kb.ettus.com/Getting_Started_with=
_RFNoC_Development</a></div><div><br></div><div>I used the manual way becau=
se I was having some weird problems using Pybombs and I am using X300 under=
 Ubuntu 18.4. I can successfully use=C2=A0 all the UHD commands, load FPGA =
with new images etc.I can also successfully use the Gnuradio-comapnion gnur=
adio blocks. <br></div><div><br></div><div>But when I use gnuradio-comapnio=
n  graphs with=C2=A0 RFNOC blocks, it can not find them.</div><div>Here is =
the error:</div><div>Loading: &quot;/home/rfnocdev/rfnoc/gr-ettus/examples/=
rfnoc/rfnoc_ddc.grc&quot;<br>Block key &quot;variable_uhd_device3&quot; not=
 found<br>Block key &quot;uhd_rfnoc_streamer_ddc&quot; not found<br>Block k=
ey &quot;uhd_rfnoc_streamer_fifo&quot; not found<br>Block key &quot;uhd_rfn=
oc_streamer_radio&quot; not found</div><div><br></div><div><br></div><div>A=
ny ideas What I am missing here.</div><div><br></div><div>Thanks,</div><div=
>Cherif</div><div><br></div><br></div>

--00000000000042adf105a8d84a94--


--===============7660016479376633867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7660016479376633867==--

