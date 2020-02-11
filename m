Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE8D158E8A
	for <lists+usrp-users@lfdr.de>; Tue, 11 Feb 2020 13:32:43 +0100 (CET)
Received: from [::1] (port=52634 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j1UiR-0008LW-Tu; Tue, 11 Feb 2020 07:32:35 -0500
Received: from mail-io1-f47.google.com ([209.85.166.47]:44963)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <francisco.albani@gmail.com>)
 id 1j1UiO-0008I5-Ao
 for usrp-users@lists.ettus.com; Tue, 11 Feb 2020 07:32:32 -0500
Received: by mail-io1-f47.google.com with SMTP id z16so11474349iod.11
 for <usrp-users@lists.ettus.com>; Tue, 11 Feb 2020 04:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=v2EhxtQrDwWDCzTquyCLaongOsksmBie3GM5njT08ys=;
 b=g0UaBBy+gK7sdGrlOxBmOxYrbkDBNKod80xdywW/4EX2+9qPt5RvyM8ZSTiCbb+q4M
 EvhgMyxIFN9wnh8NS1scDSHShz5mzlDekvwMDI0yI9hFMV7KLyaiDrARDuKgt3xfyHTs
 9M/NOsuMWepIzfm/cGn2zAXH2pZSu2h3qKtD6gztC4qdbJ6Za0GHxbDvNhFEaUAc7Com
 VYPOdjXU95mWicCqsxyYxCO2Nwxszuz1nI8i2ISNb/enVoQf7HJxt8/K+vLV0nvAudpU
 Q6gziZlR3yJTlXYXrr2F9I/dGmPhYKKYX7X/tV2ycJZlzxbzk8PJYNSiAIf/ra5aJQaz
 I33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=v2EhxtQrDwWDCzTquyCLaongOsksmBie3GM5njT08ys=;
 b=qGmkoiZ1KKX3DyeB3dAqqY9kGxJ+RNGLUNy5qubYQt4B+nRZL3iYlTtU8M/hwVa6uN
 GDwJaNgzSXILBw3acofFxgjuHR0XI9CII6veA7dbI7AyqOqOLk+OL5DN0IUwzT7KukQo
 G4tykhhHL/7mfBdxbq/q7eGAJMfX31ZaNPs3hX6Ne2j3Kl/srFP3mk7cSO6xzB7sTOzX
 QdA8UPrHEdIbo9KRM+aDtPg4JT0eQcMuTZq2CBdZ8pSQqUhaUMhjSn3oYas9y3u2HLCb
 IUGgdJO1bA3UcYJuLZS96YYTi+LNFbQjIHBL88ovDuWQSCEhF2CNvwMo+jCU3rQxc9Sv
 9Jaw==
X-Gm-Message-State: APjAAAXRFSrW7tlrZBFWS3VaJmrcJehDDq9TafGWKKILiFiRZb0/A9dw
 VjDDT2IEImw8YyJKFlLJpGhg6zKSTwKxZdPIaCXKYMCn
X-Google-Smtp-Source: APXvYqxYBjc9XBvCKIEN/drUpq7BuCqorHc7/ug1NEGQCVkjKv2U2Dba3272Z+c9notGRTM7wJtQIGA/JuaA3NpVemk=
X-Received: by 2002:a6b:600f:: with SMTP id r15mr12672288iog.54.1581424311451; 
 Tue, 11 Feb 2020 04:31:51 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 11 Feb 2020 09:31:40 -0300
Message-ID: <CAAGU92=dt=MqR=+H9hU8S9QPNpdOMMWBaiFB7BGHrtZJOitO2w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Can underflows in any way be bad for hardware in the
 long term?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Francisco Albani via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francisco Albani <francisco.albani@gmail.com>
Content-Type: multipart/mixed; boundary="===============7558815146901747257=="
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

--===============7558815146901747257==
Content-Type: multipart/alternative; boundary="00000000000052c20a059e4c0a82"

--00000000000052c20a059e4c0a82
Content-Type: text/plain; charset="UTF-8"

Hi!

I've been using USRPs many years yet it never occurred to me to ask that
question.

Of course one should avoid using an application in a regime of many
underflows, BUT, just for the sake of the question suppose I came up with a
setup that does what I want while throwing a lot of them, are there any
implications to the weariness of any piece of hardware? For example turning
on and off the TX chain.

Will a radiation environment change the conclusion?

Bye and thanks for your help!

Francisco.

--00000000000052c20a059e4c0a82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>I&#39;ve been using USRP=
s many years yet it never occurred to me to ask that question.</div><div><b=
r></div><div>Of course one should avoid using an application in a regime of=
 many underflows, BUT, just for the sake of the question suppose I came up =
with a setup that does what I want while throwing a lot of them, are there =
any implications to the weariness of any piece of hardware? For example tur=
ning on and off the TX chain.<br></div><div><br></div><div>Will a radiation=
 environment change the conclusion?</div><div><br></div><div>Bye and thanks=
 for your help!</div><div><br></div><div>Francisco.<br></div></div>

--00000000000052c20a059e4c0a82--


--===============7558815146901747257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7558815146901747257==--

