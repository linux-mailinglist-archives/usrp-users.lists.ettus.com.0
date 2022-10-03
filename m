Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7B25F34AC
	for <lists+usrp-users@lfdr.de>; Mon,  3 Oct 2022 19:38:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 453A4380B9C
	for <lists+usrp-users@lfdr.de>; Mon,  3 Oct 2022 13:38:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664818727; bh=ElP0om39ZMQU2mzC4IBtyw99LSZngjQkXVUUhHaVjaI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KcskgTlNxBadddp7pNjDT48HuukYbA0Rt05gERY60++8XNCmUg0zRoOi5MCMT28uH
	 6brVqKQ31mr/dxABeBfTGephv+nJsDPP7Ne/XCpibNJdqYWj/JfJUxC/VK85cJnDQG
	 kHDc4mk43fqbb5qTuiphHe1XV8wnMWPB1fNKt2yGO/bOjBEywMQaZnU8LWe2qj9+e1
	 yXfCK8bjz1cTLn7QEn3vSxlKEX2+mg6+naMssIpA3BmKjYhn3/nqkQbqvvgJAK+MTf
	 MTzT9h8XgB7/yIma4NP96KlTFXlDVNaSLwsmoWCPyl2VwCS2YvjUmi3HmAbaFRCHCk
	 zoaLZv0wxPtSQ==
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 59AC5380A79
	for <usrp-users@lists.ettus.com>; Mon,  3 Oct 2022 13:37:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="naSLe8ap";
	dkim-atps=neutral
Received: by mail-wr1-f54.google.com with SMTP id bq9so17806912wrb.4
        for <usrp-users@lists.ettus.com>; Mon, 03 Oct 2022 10:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=4cMvWggst5g7MC1xedf9TqKlCSq3l4jVVFSNouVKFzc=;
        b=naSLe8ap0rx6IQKmi1Xhpi2wpptC5VxVdCx+P11MCrE5Nxmbtj7AqVhC0wpq+6kkLb
         Q4fVh2Y3khVmZa1BsBwSfTjDvtpsap4yDlXXjVGcvA0NJ2rDmgL1E+BPwpyVvQ+3YPor
         ODQw2VRyOfgiY5YVGqpkjqIj1FZ5ozBvYCtw1AlvjogMi9bxQf/rQWoPo/3xbjhN4ggY
         eOE94IWxGkG/ZBIwE+ZYS66hkS4oewyjopYDxUSJnE41iIcepR4BfBd2ZKzE01AaW6lb
         7fVRBXaVGxi6py9yHpsx4hapYM8xaZ9uRwUQyAjGguI4MZWNTXBdQNbPdIvdoC6VYDaB
         PXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=4cMvWggst5g7MC1xedf9TqKlCSq3l4jVVFSNouVKFzc=;
        b=1hDrS6RL+irD2abCtg+c49LIqvB9wLz+PlUsxHb8Ri6ME79AIKfjr8L8HDozDRdtTS
         KTThEkQH1Oh2nBuGffgu2GTg18Qre+ortYtzNdaQVDr8RtAyWJEulj3ZHGJxe86JS4Ua
         yJWLeK08iMy0HjiUoOMMvL7g72VEaK+KUcdjqAEPtWg/hfx+Sae/WRv2TdXmxU9m/e5w
         VbriupjxojoqoDO3PTljI2ibTJ6OvE67qIIe8TC1lXmULKlloxBszzN+3e4DH3wx/yjl
         +eTupe7j2EsVPWLa1B6RdVT6CCU0Ayhpj6gt7ogZLwOAZRgP+455Byl1+8YxcD4E73kj
         CGAA==
X-Gm-Message-State: ACrzQf0tpVlha/DBIO2v1S+rs4RaoCUR8cn9n+7Lge8siMXUhxiLCb5q
	4KnTfjP55gtQVu1vmvJjzu6KLsYfyYtj6eelTPtYgNKHAMKUaoZY
X-Google-Smtp-Source: AMsMyM7Bo/BXzWPOmuiWZSuEUO4DkCfF7u0p6gsG+j/rIA+NrrV5I/JFirxbaKP0wyatbECRBX6gLbIH/M7BuJU6Qno=
X-Received: by 2002:a05:6000:18ab:b0:22e:39f1:861a with SMTP id
 b11-20020a05600018ab00b0022e39f1861amr4172400wri.129.1664818677862; Mon, 03
 Oct 2022 10:37:57 -0700 (PDT)
MIME-Version: 1.0
From: B Rad <br597007@gmail.com>
Date: Mon, 3 Oct 2022 13:37:46 -0400
Message-ID: <CAG0CiC68JJWonmMJoNLdc8g+W=Drfm=5j-9Nsh0=L6KDtO2dpg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: SYCCPFTMXJU6X4EYEM74HTEU6UCUMH3R
X-Message-ID-Hash: SYCCPFTMXJU6X4EYEM74HTEU6UCUMH3R
X-MailFrom: br597007@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] MPM Errors
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SYCCPFTMXJU6X4EYEM74HTEU6UCUMH3R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6998370772805450023=="

--===============6998370772805450023==
Content-Type: multipart/alternative; boundary="000000000000e8d6e705ea24cd20"

--000000000000e8d6e705ea24cd20
Content-Type: text/plain; charset="UTF-8"

Hello All,
I am running a transmitter on an e310_sg1, uhd_4.3. that transmits for a
few seconds and repeats at a given interval continuously. Unfortunately I
can not share the code for the transmitter.

Eventually the e310 gets into a state that can not be corrected without
rebooting.

The errors below occur when querying sensors during this state.

[ERROR] [MPM.RPCServer] Uncaught exception in method set_device_id:
'NoneType' object has no attribute 'set_device_id'
 Traceback (most recent call last):
  File "/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py", line 188,
in new_claimed_function
    return function(*args)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/base.py",
line 817, in set_device_id
    self.mboard_regs_control.set_device_id(device_id)
AttributeError: 'NoneType' object has no attribute 'set_device_id'

[WARNING] [MPM.RPCServer] A timeout event occured!
[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully
initialized!
[ERROR] [MPM.PeriphManager] e31x claim() failed: No device 'e0006000.spi'
in 'platform'
[ERROR] [RPC] 'NoneType' object has no attribute 'set_device_id'
Error: RuntimeError: Error during RPC call to `set_device_id'. Error
message: 'NoneType' object has no attribute 'set_device_id'

It appears the MPM is not released correctly at some point and can not be
claimed again.

I am hoping someone has seen this before and can recommend a way to avoid
this from occurring or at least recover without rebooting.


Thank you

--000000000000e8d6e705ea24cd20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div>I am running a transmitter on an=
 e310_sg1, uhd_4.3. that transmits for a few seconds and repeats at a given=
 interval continuously. Unfortunately I can not share the code for the tran=
smitter. <br></div><div><br></div><div>Eventually the e310 gets into a stat=
e that can not be corrected without rebooting. <br></div><div><br></div><di=
v>The errors below occur when querying sensors during this state. =C2=A0 <b=
r></div><br><div style=3D"margin-left:40px">[ERROR] [MPM.RPCServer] Uncaugh=
t exception in method set_device_id: &#39;NoneType&#39; object has no attri=
bute &#39;set_device_id&#39; <br>=C2=A0Traceback (most recent call last):<b=
r>=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py=
&quot;, line 188, in new_claimed_function<br>=C2=A0 =C2=A0 return function(=
*args)<br>=C2=A0 File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/perip=
h_manager/base.py&quot;, line 817, in set_device_id<br>=C2=A0 =C2=A0 self.m=
board_regs_control.set_device_id(device_id)<br>AttributeError: &#39;NoneTyp=
e&#39; object has no attribute &#39;set_device_id&#39;<br>=C2=A0<br>[WARNIN=
G] [MPM.RPCServer] A timeout event occured!<br>[WARNING] [MPM.PeriphManager=
] Cannot run deinit(), device was never fully initialized!<br>[ERROR] [MPM.=
PeriphManager] e31x claim() failed: No device &#39;e0006000.spi&#39; in &#3=
9;platform&#39;<br>[ERROR] [RPC] &#39;NoneType&#39; object has no attribute=
 &#39;set_device_id&#39;<br>Error: RuntimeError: Error during RPC call to `=
set_device_id&#39;. Error message: &#39;NoneType&#39; object has no attribu=
te &#39;set_device_id&#39;</div><div><br></div><div>It appears the MPM is n=
ot released correctly at some point and can not be claimed again. <br></div=
><div><br></div><div>I am hoping someone has seen this before and can recom=
mend a way to avoid this from occurring or at least recover without rebooti=
ng. <br></div><div><br></div><div><br></div><div>Thank you<br></div></div>

--000000000000e8d6e705ea24cd20--

--===============6998370772805450023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6998370772805450023==--
