Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB9634B1C0
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 23:03:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E17B384264
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 18:03:17 -0400 (EDT)
Received: from resqmta-po-12v.sys.comcast.net (resqmta-po-12v.sys.comcast.net [96.114.154.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 03F453841A5
	for <usrp-users@lists.ettus.com>; Fri, 26 Mar 2021 18:03:07 -0400 (EDT)
Received: from resomta-po-02v.sys.comcast.net ([96.114.154.226])
	by resqmta-po-12v.sys.comcast.net with ESMTP
	id PtMolQdQDfSZqPuXrlo15c; Fri, 26 Mar 2021 22:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1616796187;
	bh=eIl6nJ35dUuQNsZRFaDgxh+fgGFzy/KTeSF507NasDE=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=XcIW4XuopJNNZ/9x4xKlu6xZuHtDUAErDc9o73M5i6/Ok78zqXZe79OOUSp2ZNBSt
	 lkXWZEfIM+POtbokvO+Mr6ZYAj4AK9XcEhfr2gDm50B5tvDkMu8RAXeVnDoLjytC6u
	 C0SDP8vS/yIszKZKgZgLaVRciKb/oTwe5oZ5V7C2oMy/dfWIT9OJVpG1Wqb2ZzJc/J
	 rLRYR2RrRo/0/7rzzgRBbbGRsWBdoP4/OKCP+zHd/9lDkxlwW9sPXcCD062TziQfiV
	 npS2/UhhYkl4tlKYSOTFLoACbM4+R7iEdMaA3okczHa8cUPKKuqz3SxwgSJZXT/V+3
	 d8DOJ+09yqHag==
Received: from [IPv6:2601:647:4700:284:f00f:aef7:cce5:d94a]
 ([IPv6:2601:647:4700:284:f00f:aef7:cce5:d94a])
	by resomta-po-02v.sys.comcast.net with ESMTPSA
	id PuXQl4BWtxRnxPuXRlIyz8; Fri, 26 Mar 2021 22:02:52 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <MN2PR02MB5984AB90949D61895C7BBA54E3619@MN2PR02MB5984.namprd02.prod.outlook.com>
 <176D7790-E6DC-4235-938D-C11B2CF2C3D2@gmail.com>
 <MN2PR02MB59847B27C7EF19D3C49C7707E3619@MN2PR02MB5984.namprd02.prod.outlook.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <1c25ce8d-4a0f-f52b-e4b6-79b286233d4d@comcast.net>
Date: Fri, 26 Mar 2021 15:02:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <MN2PR02MB59847B27C7EF19D3C49C7707E3619@MN2PR02MB5984.namprd02.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: GW32OAQYDFFBEANQNQIKKVDFUJOWO7MO
X-Message-ID-Hash: GW32OAQYDFFBEANQNQIKKVDFUJOWO7MO
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 EVM
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GW32OAQYDFFBEANQNQIKKVDFUJOWO7MO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3710130132226486223=="

This is a multi-part message in MIME format.
--===============3710130132226486223==
Content-Type: multipart/alternative;
 boundary="------------9ABD8E5238A53C957FB70680"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9ABD8E5238A53C957FB70680
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

The B210 is telling you it's sample rate is off frequency.


Setting RX Rate: =C2=A027648000.000 Sps...
[INFO] [B200] Asking for clock rate 27.648000 MHz...
[INFO] [B200] Actually got clock rate 27.648000 MHz.
Actual RX Rate: =C2=A027648000.081 Sps... <------------------------------=
-------

Is your receiver doing clock recovery?

Ron


On 3/26/21 14:08, Beaudoin, Christopher J wrote:
> If I had to guess based on the analysis I've done so far, I'd say it=20
> appears that the master clock isn't perfectly sync'd with the external=20
> reference on the scale of 0.5 to 1 second.
>
> -----------------------------------------------------------------------=
-

--------------9ABD8E5238A53C957FB70680
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>The B210 is telling you it's sample rate is off frequency.</p>
    <p><br>
    </p>
    <p><font color=3D"#212121">
        <div>Setting RX Rate: =C2=A027648000.000 Sps...</div>
        <div>[INFO] [B200] Asking for clock rate 27.648000 MHz... </div>
        <div>[INFO] [B200] Actually got clock rate 27.648000 MHz.</div>
        <div>Actual RX Rate: =C2=A027648000.081 Sps...=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          &lt;-------------------------------------</div>
        <div><br>
        </div>
        <div>Is your receiver doing clock recovery?<br>
        </div>
        <div><br>
        </div>
        <div>Ron<br>
        </div>
      </font></p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 3/26/21 14:08, Beaudoin, Christophe=
r
      J wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR02MB59847B27C7EF19D3C49C7707E3619@MN2PR02MB5984.namprd02=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;m=
argin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        If I had to guess based on the analysis I've done so far, I'd
        say it appears that the master clock isn't perfectly sync'd with
        the external reference on the scale of 0.5 to 1 second.</div>
      <div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div id=3D"Signature">
          <div>
            <div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;
              color:#000000;
              font-family:Calibri,Arial,Helvetica,sans-serif">
            </div>
          </div>
        </div>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1"></bloc=
kquote>
  </body>
</html>

--------------9ABD8E5238A53C957FB70680--

--===============3710130132226486223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3710130132226486223==--
