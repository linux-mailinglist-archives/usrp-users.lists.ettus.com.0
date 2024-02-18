Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5DA8594BC
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 06:05:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 458293841B5
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 00:05:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708232737; bh=os390ibpJ0ZYHSxEFUO3Siyg2tIQ4kyGO19s34wTu80=;
	h=Date:In-Reply-To:To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=A+GR3KbO+r2lqNmRGaZM1pEokrb0S+poXxicE4eDiCAm+3bW8E1Ge3SXFdilWj4Tb
	 BTjRwcfPIVAxQcBqQy6lfeZTND73mIlBdqZ4A+iDBXejAbTrAltQ6EerKEQOST6gxM
	 /zdnP3MNrY2Lq1gNc2RC8zf2sFQh8tB2HDQWDsyT3cEKZpddNCIBJQQ3W3zzA4okT7
	 6POchKbb9FmI4n8iNU08zN05OawpPGfYqn6+L3JqgkwnE/+ayo3iSDst6V+vYUKPjv
	 Yz7oWUANcAnxcUIN2cLhpz3JAjns7q+Zt3nNc3y1Dd4C6/6WYuxaUEoJPFE95yJHu3
	 ybnoaUESWOBcw==
Received: from mr85p00im-ztdg06021101.me.com (mr85p00im-ztdg06021101.me.com [17.58.23.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 1350D380D2E
	for <usrp-users@lists.ettus.com>; Sun, 18 Feb 2024 00:04:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="bEAEaQjL";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708232669; bh=4D1sAYTfXymW+QBbg2WvLjj9ce2bjye7oF1GOMqdOCo=;
	h=From:Message-Id:Content-Type:Mime-Version:Subject:Date:To;
	b=bEAEaQjLFifq74GTIN5Yfy+K1mnh4ZZi5z0mPTwp4ZzmW8ux608f0x9QeQ6GR/w5k
	 kLL04F03c5k6hRGdZcfe1AlsMqnl4ky24ILk2XBrl3R7HQnPCmfstGEw8OY17i+PiU
	 k0ycsZnQk1QaAe6B39IP9kvQN8V4yzVc58q6tqKhiJxrz9EUJaGc1gYhC0BxMAX5uc
	 NDZh7+zk9BvoaAgTGXrwPfNaCXtKRkKzLyS36XFgzEOiLyblo5yX6mhEJgUQXPcF+b
	 jasXDRLcEplOu9JR9lh4ArRpk5N35ecMr2Em+UmCs0+8R0cWBjThcNf3N9sveO5YVB
	 vKWMk2NOeImDg==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-ztdg06021101.me.com (Postfix) with ESMTPSA id 4816D8013F;
	Sun, 18 Feb 2024 05:04:28 +0000 (UTC)
Message-Id: <164C83CE-6546-4971-ACFA-B79657294389@me.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Date: Sat, 17 Feb 2024 21:04:17 -0800
In-Reply-To: <cab295b9-3b63-4cf0-a8c6-96f1c7bf7a27@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
 <cab295b9-3b63-4cf0-a8c6-96f1c7bf7a27@gmail.com>
X-Mailer: Apple Mail (2.3774.400.31)
X-Proofpoint-GUID: cLNP_XTZluIDlJ3oTGAI4jgMxUDgXvE1
X-Proofpoint-ORIG-GUID: cLNP_XTZluIDlJ3oTGAI4jgMxUDgXvE1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-18_03,2024-02-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 clxscore=1015
 bulkscore=0 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402180035
Message-ID-Hash: ZL37XVDRZCMXXT6CIQADF5CYLSADZOPO
X-Message-ID-Hash: ZL37XVDRZCMXXT6CIQADF5CYLSADZOPO
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZL37XVDRZCMXXT6CIQADF5CYLSADZOPO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============1181018191000993836=="


--===============1181018191000993836==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_281D384F-159C-4E93-8FCA-519777AF600D"


--Apple-Mail=_281D384F-159C-4E93-8FCA-519777AF600D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

One other datapoint.  I have a separate machine, intel NUC running =
dragonOS which comes with gnu radio pre-installed with uhd drivers.  =
I=E2=80=99m getting the same result on that machine as well.  It is also =
using 4.1
j

> On Feb 17, 2024, at 6:57=E2=80=AFPM, Marcus D. Leech =
<patchvonbraun@gmail.com> wrote:
>=20
> On 17/02/2024 21:44, Jim Grubb wrote:
>> I was able to get UHD 4.1.0.5-3 installed after removing the ppa.  =
Unfortunately I'm still running into a problem.
>>=20
>> Any ideas would be appreciated.
>> Thanks
>> j
>>=20
>> jim@pop-os:/usr/lib/uhd/utils$ uhd_find_devices
>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; =
UHD_4.1.0.5-3
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>>     serial: 3293561
>>     name: B205i
>>     product: B205mini
>>     type: b200
>>=20
>>=20
>> jim@pop-os:/usr/lib/uhd/utils$ uhd_usrp_probe
>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; =
UHD_4.1.0.5-3
>> [INFO] [B200] Detected Device: B205mini
>> [INFO] [B200] Operating over USB 3.
>> [ERROR] [UHD] Exception caught in safe-call.
>>   in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()
>>   at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66
>> this->peek32(0); _async_task.reset(); -> AssertionError: =
accum_timeout < _timeout
>>   in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>>   at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>=20
>> Error: AssertionError: accum_timeout < _timeout
>>   in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>>   at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>=20
>>=20
> The other thing that just occurred to me is that your host controller =
may not be supplying enough power.  This should "never"
>   happen these days, but you might try using one of those "Y" USB =
cables that can provide extra power from another USB port
>   to a downstream device.
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--Apple-Mail=_281D384F-159C-4E93-8FCA-519777AF600D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">One other =
datapoint. &nbsp;I have a separate machine, intel NUC running dragonOS =
which comes with gnu radio pre-installed with uhd drivers. &nbsp;I=E2=80=99=
m getting the same result on that machine as well. &nbsp;It is also =
using 4.1<div>j<br =
id=3D"lineBreakAtBeginningOfMessage"><div><br><blockquote =
type=3D"cite"><div>On Feb 17, 2024, at 6:57=E2=80=AFPM, Marcus D. Leech =
&lt;patchvonbraun@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div>

 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3DUTF-8">
 =20
  <div>
    <div class=3D"moz-cite-prefix">On 17/02/2024 21:44, Jim Grubb =
wrote:<br>
    </div>
    <blockquote type=3D"cite" =
cite=3D"mid:5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3DUTF-8">
      <div><font face=3D"Monaco">I was able to get UHD 4.1.0.5-3 =
installed
          after removing the ppa. &nbsp;Unfortunately I'm still running =
into
          a problem.</font></div>
      <div><font face=3D"Monaco"><br>
        </font></div>
      <div><font face=3D"Monaco">Any ideas would =
be&nbsp;appreciated.</font></div>
      <div><font face=3D"Monaco">Thanks</font></div>
      <div><font face=3D"Monaco">j</font></div>
      <div><font face=3D"Monaco"><br>
        </font></div>
      <div>
        <div><font face=3D"Monaco">jim@pop-os:/usr/lib/uhd/utils$
            uhd_find_devices</font></div>
        <div><font face=3D"Monaco">[INFO] [UHD] linux; GNU C++ version
            11.2.0; Boost_107400; UHD_4.1.0.5-3</font></div>
        <div><font =
face=3D"Monaco">--------------------------------------------------</font><=
/div>
        <div><font face=3D"Monaco">-- UHD Device 0</font></div>
        <div><font =
face=3D"Monaco">--------------------------------------------------</font><=
/div>
        <div><font face=3D"Monaco">Device Address:</font></div>
        <div><font face=3D"Monaco">&nbsp; &nbsp; serial: =
3293561</font></div>
        <div><font face=3D"Monaco">&nbsp; &nbsp; name: =
B205i</font></div>
        <div><font face=3D"Monaco">&nbsp; &nbsp; product: =
B205mini</font></div>
        <div><font face=3D"Monaco">&nbsp; &nbsp; type: b200</font></div>
        <div><font face=3D"Monaco"><br>
          </font></div>
        <div><font face=3D"Monaco"><br>
          </font></div>
        <div><font face=3D"Monaco">jim@pop-os:/usr/lib/uhd/utils$
            uhd_usrp_probe</font></div>
        <div><font face=3D"Monaco">[INFO] [UHD] linux; GNU C++ version
            11.2.0; Boost_107400; UHD_4.1.0.5-3</font></div>
        <div><font face=3D"Monaco">[INFO] [B200] Detected Device: =
B205mini</font></div>
        <div><font face=3D"Monaco">[INFO] [B200] Operating over USB =
3.</font></div>
        <div><font face=3D"Monaco">[ERROR] [UHD] Exception caught in
            safe-call.</font></div>
        <div><font face=3D"Monaco">&nbsp; in virtual
            =
b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()</font></div>
        <div><font face=3D"Monaco">&nbsp; at
            =
./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66</font></div>
        <div><font face=3D"Monaco">this-&gt;peek32(0);
            _async_task.reset(); -&gt; AssertionError: accum_timeout
            &lt; _timeout</font></div>
        <div><font face=3D"Monaco">&nbsp; in uint64_t
            b200_radio_ctrl_core_impl::wait_for_ack(bool)</font></div>
        <div><font face=3D"Monaco">&nbsp; at
            =
./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</font></div>
        <div><font face=3D"Monaco"><br>
          </font></div>
        <div><font face=3D"Monaco">Error: AssertionError: accum_timeout
            &lt; _timeout</font></div>
        <div><font face=3D"Monaco">&nbsp; in uint64_t
            b200_radio_ctrl_core_impl::wait_for_ack(bool)</font></div>
        <div><font face=3D"Monaco">&nbsp; at
            =
./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</font></div>
      </div>
      <div><br>
      </div>
      <div><br>
      </div>
    </blockquote>
    The other thing that just occurred to me is that your host
    controller may not be supplying enough power.&nbsp; This should =
"never"<br>
    &nbsp; happen these days, but you might try using one of those "Y" =
USB
    cables that can provide extra power from another USB port<br>
    &nbsp; to a downstream device.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>USRP-users mailing =
list -- usrp-users@lists.ettus.com<br>To unsubscribe send an email to =
usrp-users-leave@lists.ettus.com<br></div></blockquote></div><br></div></b=
ody></html>=

--Apple-Mail=_281D384F-159C-4E93-8FCA-519777AF600D--

--===============1181018191000993836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1181018191000993836==--
