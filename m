Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4AE509C5F
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 11:34:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1AC63849BF
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 05:34:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650533690; bh=VbV9EysZtIhLtUFdxJBBkDUH24LxUetSfvcCExwLSIA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lDCWJ93YOlc31Kph3lR9dkTQe+YKIFbXn4UpKBgz8YwbTk6lgluOYF4DJTQZxi82Z
	 6JtZ9xHqPkeuO2tgV5KfCYCtxq8DK+2Eb98+PdjlXUODyl/7CPJGN930vzG6FnqTB8
	 r+Il50bohxSvQuhfZ3gpzhZ/R98P6q5MxUYQPW4L++LUwDNbYmR0vlHkFks3iOKpLK
	 qBn79bsuMfifFj+YyYUSjC6z5aqM9nXYZ1CG5kHHxMxj203ZmgWzKvWtsZ8oxo19TV
	 FXsZqegOw9rEnRy4yzxZezUIO6XdTqcueBPYEvp7Ww8OXLQ6uaVTiMa0tps0OJ3RFe
	 PNVdDlEStGxFA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C441F3846A9
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 05:33:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650533618; bh=XaNSOv45BVmQyWj8d3P9oufqjSe3KYH84VNp8KkB7lM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gpFIVBiJ+DHnkK/zEaAiRtntlKNmXRCwdUlM9Stch/+RiZK0/JjR4A+BpCYOEaSzq
	 3v0Ow/abRr+xxotUju8L5/4Lw/5b710RQscOPiNQN8f0N2YePLGqcDia3vGNTgrJYn
	 k/erjBoopEZ0ZTKHz/jd0F2cqhzc6JaCudrJyX+Dxu8YIdk5jvHbgaX5cf46rdCwLO
	 hbuFdx5P5hkF7plxXdz3lnFT9Na2z7S3sADBWgQ4fyJ0VG/LxaJ7SOa7B42tOE3poH
	 7R6kXLzajhqVttrn0mhzyy2QtHAKahipg5ES5Smxj398TqeznXUbYbDKHwM4Nmuxmr
	 vqxjWBCqV0kuw==
Date: Thu, 21 Apr 2022 09:33:38 +0000
To: usrp-users@lists.ettus.com
From: mathis.raemy@master.hes-so.ch
Message-ID: <GlUmhntkQ1D70S8EvyVRZ3yNssmK7bF0i587YvBBPJI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7f0b56f1-a744-2b52-601a-62df63ddac31@master.hes-so.ch
MIME-Version: 1.0
Message-ID-Hash: JBQTM4B7O7J4WVM5VHW5DFIPZ53KJCXM
X-Message-ID-Hash: JBQTM4B7O7J4WVM5VHW5DFIPZ53KJCXM
X-MailFrom: mathis.raemy@master.hes-so.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Implementation of PTP in Ettus N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JBQTM4B7O7J4WVM5VHW5DFIPZ53KJCXM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0253946095199548898=="

This is a multi-part message in MIME format.

--===============0253946095199548898==
Content-Type: multipart/alternative;
 boundary="b1_GlUmhntkQ1D70S8EvyVRZ3yNssmK7bF0i587YvBBPJI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_GlUmhntkQ1D70S8EvyVRZ3yNssmK7bF0i587YvBBPJI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sorry for the terrible format of my message.

Hi,\
I'm currently working on a=C2=A0project=C2=A0about the=C2=A0protocol Whit=
e Rabbit=C2=A0and=C2=A0PTP.=C2=A0To=C2=A0do=C2=A0this,=C2=A0I=C2=A0use=C2=
=A0the=C2=A0USRP=C2=A0N320, and=C2=A0I'm able to=C2=A0start=C2=A0a=C2=A0m=
aster/slave architecture and=C2=A0run=C2=A0a complete synchronization bet=
ween two=C2=A0devices.=C2=A0For=C2=A0now, I=C2=A0have=C2=A0to redirect=C2=
=A0PTP=C2=A0messages=C2=A0over=C2=A0radio=C2=A0instead of optical fiber.=C2=
=A0So=C2=A0for the first=C2=A0step,=C2=A0I'm=C2=A0looking=C2=A0for the so=
urce code that=C2=A0implement=C2=A0the=C2=A0PTP=C2=A0protocol.=C2=A0I did=
n't=C2=A0found=C2=A0anything inside the hardware source code of [UHD](htt=
ps://github.com/EttusResearch/uhd).=C2=A0So=C2=A0I=C2=A0thought=C2=A0it=C2=
=A0was=C2=A0a software=C2=A0implementation=C2=A0of=C2=A0PTP, but=C2=A0I d=
idn't found any daemon running in the=C2=A0Ettus=C2=A0N320=C2=A0during th=
e synchronization.=C2=A0I=C2=A0also found=C2=A0the [wrpc-sw](https://gith=
ub.com/EttusResearch/wrpc-sw) which=C2=A0include=C2=A0as a submodule the=C2=
=A0new=C2=A0version=C2=A0PPSi which clearly implement PTP but it seems li=
ke any of those two software are not=C2=A0running on=C2=A0my=C2=A0system.=
 \
My=C2=A0question=C2=A0is:=C2=A0\
 Where is implemented=C2=A0the=C2=A0PTP=C2=A0protocol=C2=A0for the synchr=
onization for the Ettus N320 between=C2=A0Master=C2=A0and Slave? \
 Is there any easier way to redirect PTP messages in radio instead of opt=
ical output ?\
 \
 Best regards, Mathis

--b1_GlUmhntkQ1D70S8EvyVRZ3yNssmK7bF0i587YvBBPJI
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Sorry for the terrible format of my message.</p><p>Hi,<br>I'm currently =
working on a&nbsp;project&nbsp;about the&nbsp;protocol White Rabbit&nbsp;an=
d&nbsp;PTP.&nbsp;To&nbsp;do&nbsp;this,&nbsp;I&nbsp;use&nbsp;the&nbsp;USRP&n=
bsp;N320, and&nbsp;I'm able to&nbsp;start&nbsp;a&nbsp;master/slave architec=
ture and&nbsp;run&nbsp;a complete synchronization between two&nbsp;devices.=
&nbsp;For&nbsp;now, I&nbsp;have&nbsp;to redirect&nbsp;PTP&nbsp;messages&nbs=
p;over&nbsp;radio&nbsp;instead of optical fiber.&nbsp;So&nbsp;for the first=
&nbsp;step,&nbsp;I'm&nbsp;looking&nbsp;for the source code that&nbsp;implem=
ent&nbsp;the&nbsp;PTP&nbsp;protocol.&nbsp;I didn't&nbsp;found&nbsp;anything=
 inside the hardware source code of <a href=3D"https://github.com/EttusRese=
arch/uhd">UHD</a>.&nbsp;So&nbsp;I&nbsp;thought&nbsp;it&nbsp;was&nbsp;a soft=
ware&nbsp;implementation&nbsp;of&nbsp;PTP, but&nbsp;I didn't found any daem=
on running in the&nbsp;Ettus&nbsp;N320&nbsp;during the synchronization.&nbs=
p;I&nbsp;also found&nbsp;the <a href=3D"https://github.com/EttusResearch/wr=
pc-sw">wrpc-sw</a> which&nbsp;include&nbsp;as a submodule the&nbsp;new&nbsp=
;version&nbsp;PPSi which clearly implement PTP but it seems like any of tho=
se two software are not&nbsp;running on&nbsp;my&nbsp;system. <br>My&nbsp;qu=
estion&nbsp;is:&nbsp;<br> Where is implemented&nbsp;the&nbsp;PTP&nbsp;proto=
col&nbsp;for the synchronization for the Ettus N320 between&nbsp;Master&nbs=
p;and Slave? <br> Is there any easier way to redirect PTP messages in radio=
 instead of optical output ?<br> <br> Best regards, Mathis</p>

--b1_GlUmhntkQ1D70S8EvyVRZ3yNssmK7bF0i587YvBBPJI--

--===============0253946095199548898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0253946095199548898==--
