Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB1F42561
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 14:18:48 +0200 (CEST)
Received: from [::1] (port=42702 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hb2DG-0008Qb-MK; Wed, 12 Jun 2019 08:18:46 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:36505)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejcspii@gmail.com>) id 1hb2DC-0008Ir-1e
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 08:18:42 -0400
Received: by mail-ed1-f54.google.com with SMTP id k21so22075010edq.3
 for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2019 05:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=isv/5YtujSxepHNPuSt1SfbHwwjLejv6jvhF51w/Z2g=;
 b=R0bX5EX36dfhvO5CIW++lLG0S/21UWBAO7KWq7M21yapj0/iqtuSI12tHTJQmaCVqk
 V1kLeNegC7RMiYoomq34FplSRw56CgKFHnaSBLBqndZwTA/W4JduNkgM5iZ9QGTHmQ6G
 lG6dx4eneOtOJwnVV2XPk0sY9YyMjDTh3O+izybuLKlcg/aTg4/QTgBS4cmWLmqsLkcU
 Sm5ZdCX/q3wDOoo1eyAmvCgdOYvc76gg0aRrjS6WoeHKbMwkBUgzBCZkowHmdEU5IL3m
 IsSoVYjoBiwVcASD3YJjvH0E45w+f4TqUvS1r4nwRmSF0kKYkKJ1gNBeCpoIQschAn7J
 1WxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=isv/5YtujSxepHNPuSt1SfbHwwjLejv6jvhF51w/Z2g=;
 b=HYINtWqr/eU3RtvBshxOg2dcABQkMf084m8a1GcdbadDQBE7rwm3kYLm6tTc94Jiih
 lE0n5vqA1HNe9s/y0XqZlY8WxdSC9JAws+jZ/zoK36kMWA7qqaKo62nasAFtjxihUVrV
 I33F9mDwrnKXm260SlT85zKO4zA0U5wlNOyi2JkI4rLXAm1EzAUSMa7eKN4j+Z41AI9a
 KzPAOZTMrzNcm+92wQQOzoQjPPCQ38nRcbMWr3BPW0i8LxV1pNPfdQ1arPhyR/6oYfqJ
 qnFSNHkToU5c8S22pT0l3rRCUHOm5sHAY/atFC84Pi3EyJ7tsmeoBDKu2qjt90P8dODz
 D2yA==
X-Gm-Message-State: APjAAAUlW8899K8sEgzXIS+Rx6/d7QetDroRuCHSWS0P6T6yJz+teMmB
 8a/++88B+Im3bpPr09nO4+g9qJ87oWwxRm1IpVCO2hADPnU=
X-Google-Smtp-Source: APXvYqw/IY2p8cHP1G2OaNbhES11jWgzaoY+87KhFaYpd4Hvm7sumY4pCnClv937VdF/vTDnEBMq229/Ma1XJztVatk=
X-Received: by 2002:a50:84a1:: with SMTP id 30mr87876454edq.105.1560341880747; 
 Wed, 12 Jun 2019 05:18:00 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 12 Jun 2019 14:17:49 +0200
Message-ID: <CAGtDtzxDiv0y5joQzVXkSfsTu7Xo_=_RCjHw76MyX50bY2-EGA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC multi-driven nets
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Peter Horvath via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Peter Horvath <ejcspii@gmail.com>
Content-Type: multipart/mixed; boundary="===============8554064667663705426=="
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

--===============8554064667663705426==
Content-Type: multipart/alternative; boundary="00000000000087bc23058b1f67c2"

--00000000000087bc23058b1f67c2
Content-Type: text/plain; charset="UTF-8"

Hello,
I'm trying to bake an RFNoC image from the latest master, using Vivado
2018.3. However, I get DRC errors:

CRITICAL WARNING: [Synth 8-6859] multi-driven net on pin ce_clk with 1st
driver pin 'bus_clk_gen/CLK_OUT4' [/home/x/fpga/usrp3/top/x300/x300.v:284]
CRITICAL WARNING: [Synth 8-6859] multi-driven net on pin ce_clk with 2nd
driver pin 'radio_clk_gen/CLK_OUT1' [/home/x/fpga/usrp3/top/x300/x300.v:381]
CRITICAL WARNING: [Synth 8-6859] multi-driven net on pin ce_rst with 1st
driver pin
'ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q'
[/home/x/fpga/usrp3/lib/control/synchronizer_impl.v:33]
CRITICAL WARNING: [Synth 8-6859] multi-driven net on pin ce_rst with 2nd
driver pin
'radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q'
[/home/x/fpga/usrp3/lib/control/synchronizer_impl.v:33]

ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4 has
multiple drivers: bus_clk_gen/inst/clkout4_buf/O, and
radio_clk_gen/inst/clkout1_buf/O.
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has
multiple drivers:
ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q,
and
radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q.

By looking at x300.v, it is not clear why these nets would be multiply
driven. No custom modules, freshly cloned repo, with the command line:
./uhd_image_builder.py duc ddc --device X310 --target X310_RFNOC_XG
Is the latest master considered to be usable? Am I missing something?
Any help appreciated.
Best regards,
Peter

--00000000000087bc23058b1f67c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>I&#39;m trying to bake an RFNoC imag=
e from the latest master, using Vivado 2018.3. However, I get DRC errors:</=
div><div><br></div><div>CRITICAL WARNING: [Synth 8-6859] multi-driven net o=
n pin ce_clk with 1st driver pin &#39;bus_clk_gen/CLK_OUT4&#39; [/home/x/fp=
ga/usrp3/top/x300/x300.v:284]<br>CRITICAL WARNING: [Synth 8-6859] multi-dri=
ven net on pin ce_clk with 2nd driver pin &#39;radio_clk_gen/CLK_OUT1&#39; =
[/home/x/fpga/usrp3/top/x300/x300.v:381]<br>CRITICAL WARNING: [Synth 8-6859=
] multi-driven net on pin ce_rst with 1st driver pin &#39;ce_reset_sync/res=
et_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q&#39; [/h=
ome/x/fpga/usrp3/lib/control/synchronizer_impl.v:33]<br>CRITICAL WARNING: [=
Synth 8-6859] multi-driven net on pin ce_rst with 2nd driver pin &#39;radio=
_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9=
][0]/Q&#39; [/home/x/fpga/usrp3/lib/control/synchronizer_impl.v:33]</div><d=
iv><br></div><div>ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen=
/inst/CLK_OUT4 has multiple drivers: bus_clk_gen/inst/clkout4_buf/O, and ra=
dio_clk_gen/inst/clkout1_buf/O.<br>ERROR: [DRC MDRV-1] Multiple Driver Nets=
: Net radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9=
 has multiple drivers: ce_reset_sync/reset_double_sync/synchronizer_false_p=
ath/stages[9].value_reg[9][0]/Q, and radio_reset_sync/reset_double_sync/syn=
chronizer_false_path/stages[9].value_reg[9][0]/Q.</div><div><br></div><div>=
By looking at x300.v, it is not clear why these nets would be multiply driv=
en. No custom modules, freshly cloned repo, with the command line:</div><di=
v>./uhd_image_builder.py duc ddc --device X310 --target X310_RFNOC_XG <br><=
/div><div>Is the latest master considered to be usable? Am I missing someth=
ing?<br></div><div>Any help appreciated.</div><div>Best regards,</div><div>=
Peter</div><div><br></div><div><br></div></div>

--00000000000087bc23058b1f67c2--


--===============8554064667663705426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8554064667663705426==--

