Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EA56A7CEA
	for <lists+usrp-users@lfdr.de>; Thu,  2 Mar 2023 09:38:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BD4A38461D
	for <lists+usrp-users@lfdr.de>; Thu,  2 Mar 2023 03:38:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677746280; bh=+VIn3k2erUZbqXrOtRw6H2+M39gaTbVO3A0zwdAJbM4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WNSWddE+oQk1GqAfobw3CSYD5wd2S+VfQiPXLFTEf12M0/+l9Rm1dmJ4slb3XUt/0
	 JqUoPZRACSbGfJpO8WqEJBkDBJ8/Q1Z62LgowbHNOFGdjxjz7b9IoFsXmcaPmDuOu5
	 9r4A00d8WspfHbLTmRMOB1lhfAMhjB/jdhwNbRLqwXRdWY+GRD9Y4G9a709N5b1JwX
	 LJtjcmqIWg1/CZN2Kd9FkZLykypZ3bMnMxSVFnRP/8AjaYzw5id/2k6h5X7IqfhvhJ
	 k3stqtH6rpjin/7ai92pSbxpJhRRjPmKxK+7X4JKySoGGZPBBWEqNqo/rVlfZhcNKn
	 HRlLfdzzLXzpQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25DB238461D
	for <usrp-users@lists.ettus.com>; Thu,  2 Mar 2023 03:37:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677746274; bh=5M0th7i3zzx5QQ/55w4bDTTU4hDkVxtatwviRsiluRU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=RcBtHx/OboEMMasp/3uuMLBUUxFH9pP4ywOAVjCOUY5D3Ad8tUlEgtXGjq+zk7ncu
	 HUXnsfJiFzAkezwnM/KBx7X3nawW/+mVIwgimrJTd2Y95V9bbkXhaZ6E1c8LY7YRnS
	 oYa6SF2Z9eCUx7ibFaRxkvTnLFrkEj5c5yqseWXZ0uws+qXuSfNxQBzmu/ePOHA/S0
	 eaMkMsK7HcnlePH9LZnU2G9hcLj9I//GZYA8JtDORMroaBej3A9e8pWeckF0Ut6Oo2
	 ujEhhho2pCAZteSJk68MmBcz2iW3v6w3FkbHDku0OQXd9dd9S81cUGu22zu+w2wN7w
	 /3j1Ghg0R1bBA==
Date: Thu, 2 Mar 2023 08:37:54 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: be6db947-0870-955e-14da-c0f1e4768efb@gmail.com
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM"
Content-Transfer-Encoding: 7bit
Message-ID-Hash: YYRCWA2K74DPBWZ62P7HQ36RDXMNKEWO
X-Message-ID-Hash: YYRCWA2K74DPBWZ62P7HQ36RDXMNKEWO
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YYRCWA2K74DPBWZ62P7HQ36RDXMNKEWO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.

--b1_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM
Content-Type: multipart/alternative;
 boundary="b2_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM"

--b2_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am changing the distance between 1 and 1,5 meter. I usually change gain=
 settings. But I always make 100dB totals. Right now, RX=3D35, TX=3D65.

I used VNA as a signal generator. I set -20dBm signal in VNA and I ran my=
 SDR as receiver. Actually, the results are satisfactory. SDRs receiver s=
eems okay. Almost no difference between 0 and 180 degree. So, can we say =
the problem is in transmitter?

I can=E2=80=99t share all of the code. But I share the connections and se=
ttings in attachment.

--b2_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I am changing the distance between 1 and 1,5 meter. I usually change g=
ain settings. But I always make 100dB totals. Right now, RX=3D35, TX=3D65=
.</p><p>I used VNA as a signal generator. I set -20dBm signal in VNA and =
I ran my SDR as receiver. Actually, the results are satisfactory. SDRs re=
ceiver seems okay. Almost no difference between 0 and 180 degree. So, can=
 we say the problem is in transmitter?</p><p>I can=E2=80=99t share all of=
 the code. But I share the connections and settings in attachment.</p>


--b2_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM--

--b1_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM
Content-Type: text/plain; name=codes.txt
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=codes.txt

IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMNCiMgVmFy
aWFibGVzDQojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
Iw0KDQpzZWxmLnNhbXBsZV9yYXRlID0gc2FtcGxlX3JhdGUgPSAxMGU2DQpzZWxmLmZmdF9zaXpl
ID0gZmZ0X3NpemUgPSAxMDI0DQpzZWxmLmNlbnRlcl9mcmVxID0gY2VudGVyX2ZyZXEgPSBmcmVx
TGlzdFswXQ0Kc2VsZi5idyA9IGJ3ID0gMjAwZTMNCnNlbGYubG9fb2Zmc2V0ID0gbG9fb2Zmc2V0
ID0gNTBlMw0KDQojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIw0KIyBCbG9ja3MNCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjDQpzZWxmLnVoZF91c3JwX3NvdXJjZV8wID0gdWhkLnVzcnBfc291cmNlKA0KICAg
ICIsIi5qb2luKCgic2VyaWFsPXh4eHh4eHgiLCAibnVtX3NlbmRfZnJhbWVzPTI1NiIsICJudW1f
cmVjdl9mcmFtZXM9MjU2IikpLA0KICAgIHVoZC5zdHJlYW1fYXJncygNCiAgICAgICAgY3B1X2Zv
cm1hdD0iZmMzMiIsDQogICAgICAgIG90d19mb3JtYXQ9InNjMTIiLA0KICAgICAgICBhcmdzPScn
LA0KICAgICAgICBjaGFubmVscz1saXN0KHJhbmdlKDAsIDEpKSwNCiAgICApLA0KKQ0KDQpzZWxm
LnVoZF91c3JwX3NvdXJjZV8wLnNldF9zYW1wX3JhdGUoc2FtcGxlX3JhdGUpDQpzZWxmLnVoZF91
c3JwX3NvdXJjZV8wLnNldF90aW1lX3Vua25vd25fcHBzKHVoZC50aW1lX3NwZWMoMCkpDQoNCnNl
bGYudWhkX3VzcnBfc291cmNlXzAuc2V0X2NlbnRlcl9mcmVxKHVoZC50dW5lX3JlcXVlc3QoY2Vu
dGVyX2ZyZXEsIHJmX2ZyZXE9Y2VudGVyX2ZyZXEtbG9fb2Zmc2V0LA0KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZl9mcmVxX3BvbGljeT11
aGQudHVuZV9yZXF1ZXN0LlBPTElDWV9NQU5VQUwpLCAwKQ0Kc2VsZi51aGRfdXNycF9zb3VyY2Vf
MC5zZXRfYW50ZW5uYSgnUlgyJywgMCkNCnNlbGYudWhkX3VzcnBfc291cmNlXzAuc2V0X2JhbmR3
aWR0aChidywgMCkNCnNlbGYudWhkX3VzcnBfc291cmNlXzAuc2V0X2dhaW4oMzUsIDApDQpzZWxm
LnVoZF91c3JwX3NpbmtfMCA9IHVoZC51c3JwX3NpbmsoDQogICAgIiwiLmpvaW4oKCJzZXJpYWw9
eHh4eHh4eCIsICJudW1fc2VuZF9mcmFtZXM9MjU2IiwgIm51bV9yZWN2X2ZyYW1lcz0yNTYiKSks
DQogICAgdWhkLnN0cmVhbV9hcmdzKA0KICAgICAgICBjcHVfZm9ybWF0PSJmYzMyIiwNCiAgICAg
ICAgb3R3X2Zvcm1hdD0ic2MxMiIsDQogICAgICAgIGFyZ3M9JycsDQogICAgICAgIGNoYW5uZWxz
PWxpc3QocmFuZ2UoMCwgMSkpLA0KICAgICksDQogICAgJycsDQopDQoNCnNlbGYudWhkX3VzcnBf
c2lua18wLnNldF9zYW1wX3JhdGUoc2FtcGxlX3JhdGUpDQpzZWxmLnVoZF91c3JwX3NpbmtfMC5z
ZXRfdGltZV91bmtub3duX3Bwcyh1aGQudGltZV9zcGVjKDApKQ0KDQpzZWxmLnVoZF91c3JwX3Np
bmtfMC5zZXRfY2VudGVyX2ZyZXEodWhkLnR1bmVfcmVxdWVzdChjZW50ZXJfZnJlcSwgcmZfZnJl
cT1jZW50ZXJfZnJlcS1sb19vZmZzZXQsDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZl9mcmVxX3BvbGljeT11aGQudHVuZV9yZXF1ZXN0LlBP
TElDWV9NQU5VQUwpLCAwKQ0Kc2VsZi51aGRfdXNycF9zaW5rXzAuc2V0X2FudGVubmEoJ1RYL1JY
JywgMCkNCnNlbGYudWhkX3VzcnBfc2lua18wLnNldF9iYW5kd2lkdGgoYncsIDApDQpzZWxmLnVo
ZF91c3JwX3NpbmtfMC5zZXRfZ2Fpbig2NSwgMCkNCnNlbGYuZmZ0X3Z4eF8wID0gZmZ0LmZmdF92
Y2MoZmZ0X3NpemUsIFRydWUsIHdpbmRvdy5ibGFja21hbmhhcnJpcyhmZnRfc2l6ZSksIFRydWUs
IDEpDQpzZWxmLmJsb2Nrc192ZWN0b3JfdG9fc3RyZWFtXzAgPSBibG9ja3MudmVjdG9yX3RvX3N0
cmVhbShnci5zaXplb2ZfZmxvYXQgKiBmZnRfc2l6ZSwgMSkNCnNlbGYuYmxvY2tzX3N0cmVhbV90
b192ZWN0b3JfMF8wXzAgPSBibG9ja3Muc3RyZWFtX3RvX3ZlY3Rvcihnci5zaXplb2ZfZ3JfY29t
cGxleCAqIDEsIGZmdF9zaXplKQ0Kc2VsZi5ibG9ja3NfbnVsbF9zaW5rXzAgPSBibG9ja3MubnVs
bF9zaW5rKGdyLnNpemVvZl9mbG9hdCAqIGZmdF9zaXplKQ0Kc2VsZi5ibG9ja3NfbmxvZzEwX2Zm
XzAgPSBibG9ja3MubmxvZzEwX2ZmKDEwLCBmZnRfc2l6ZSwgMCkNCnNlbGYuYmxvY2tzX211bHRp
cGx5X2NvbnN0X3h4XzAgPSBibG9ja3MubXVsdGlwbHlfY29uc3RfY2MoMSAvIGZmdF9zaXplLCBm
ZnRfc2l6ZSkNCnNlbGYuYmxvY2tzX2ZpbGVfc2lua18wID0gYmxvY2tzLmZpbGVfc2luayhnci5z
aXplb2ZfZmxvYXQgKiBmZnRfc2l6ZSwgcGF0aCwgRmFsc2UpDQpzZWxmLmJsb2Nrc19maWxlX3Np
bmtfMC5zZXRfdW5idWZmZXJlZChUcnVlKQ0Kc2VsZi5ibG9ja3NfY29tcGxleF90b19tYWdfc3F1
YXJlZF8wID0gYmxvY2tzLmNvbXBsZXhfdG9fbWFnX3NxdWFyZWQoZmZ0X3NpemUpDQpzZWxmLmFu
YWxvZ19zaWdfc291cmNlX3hfMCA9IGFuYWxvZy5zaWdfc291cmNlX2Moc2FtcGxlX3JhdGUsIGFu
YWxvZy5HUl9TSU5fV0FWRSwgMjAwMDAsIDEsIDAsIDApDQoNCiMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjDQojIENvbm5lY3Rpb25zDQojIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIw0KDQpzZWxmLmNvbm5lY3Qo
KHNlbGYuYW5hbG9nX3NpZ19zb3VyY2VfeF8wLCAwKSwgKHNlbGYudWhkX3VzcnBfc2lua18wLCAw
KSkNCnNlbGYuY29ubmVjdCgoc2VsZi51aGRfdXNycF9zb3VyY2VfMCwgMCksIChzZWxmLmJsb2Nr
c19zdHJlYW1fdG9fdmVjdG9yXzBfMF8wLCAwKSkNCnNlbGYuY29ubmVjdCgoc2VsZi5ibG9ja3Nf
c3RyZWFtX3RvX3ZlY3Rvcl8wXzBfMCwgMCksIChzZWxmLmZmdF92eHhfMCwgMCkpDQpzZWxmLmNv
bm5lY3QoKHNlbGYuZmZ0X3Z4eF8wLCAwKSwgKHNlbGYuYmxvY2tzX211bHRpcGx5X2NvbnN0X3h4
XzAsIDApKQ0Kc2VsZi5jb25uZWN0KChzZWxmLmJsb2Nrc19tdWx0aXBseV9jb25zdF94eF8wLCAw
KSwgKHNlbGYuYmxvY2tzX2NvbXBsZXhfdG9fbWFnX3NxdWFyZWRfMCwgMCkpDQpzZWxmLmNvbm5l
Y3QoKHNlbGYuYmxvY2tzX2NvbXBsZXhfdG9fbWFnX3NxdWFyZWRfMCwgMCksIChzZWxmLmJsb2Nr
c19ubG9nMTBfZmZfMCwgMCkpDQpzZWxmLmNvbm5lY3QoKHNlbGYuYmxvY2tzX25sb2cxMF9mZl8w
LCAwKSwgKHNlbGYuYmxvY2tzX3ZlY3Rvcl90b19zdHJlYW1fMCwgMCkpDQpzZWxmLmNvbm5lY3Qo
KHNlbGYuYmxvY2tzX3ZlY3Rvcl90b19zdHJlYW1fMCwgMCksIChzZWxmLmJsb2Nrc19maWxlX3Np
bmtfMCwgMCkpDQpzZWxmLmNvbm5lY3QoKHNlbGYuYmxvY2tzX3ZlY3Rvcl90b19zdHJlYW1fMCwg
MCksIChzZWxmLmJsb2Nrc19udWxsX3NpbmtfMCwgMCkpDQo=

--b1_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_dItBPR2xFEFc4WMaAMehf9nqUbKcbb5ji7MSYJPtfM--
