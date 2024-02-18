Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A176C859457
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 04:19:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DBE038443D
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 22:19:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708226376; bh=TtpNMJLx5XfOhTlYcjYydopbIsf7vACFMkmSKWJ0uW0=;
	h=Date:In-Reply-To:To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=V2mEJAGE6OQ58Tlmk2kloNAiidQqmEAakA4jVcimbpimRjlt1CjR9S1XMpzTc6ot0
	 B46AgfgJoEVfADQ+H2a2H/tVKywpa8mdf8n36dqcJH5ipXz0+vWCHgUofd7QHfS5W4
	 7Z7D6i4BTkpOmx+w/a73daEnE4U+VFz8us/Rb8U1oq8T6FsSbmx4UThslqIT6MxJEf
	 cWX5H3A3Bw5tcjkp/m5sTC6eHo3KxN0Y2Da+x9I5PzKpFGq1y0QCQE7HJmxQdGIY93
	 ysumHoq4nDuK/q8mGTeq284a/pzk84DHv7GZMBTFhXVGfQ8FtLYSkpZRL8ogrgufj5
	 YGdeLMqr2PS8g==
Received: from mr85p00im-zteg06022001.me.com (mr85p00im-zteg06022001.me.com [17.58.23.193])
	by mm2.emwd.com (Postfix) with ESMTPS id E3996381555
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 22:19:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="11V8xfI3";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708226339; bh=lhGP0fG6QyfUV3JCbtxT/N2Ne+QlQl/PHprcBfxlK4E=;
	h=From:Message-Id:Content-Type:Mime-Version:Subject:Date:To;
	b=11V8xfI3wVj5djiLxPkg29gwPJOX9nU0IDIWIcQcJmZrNPXOw4eM5mRGAC4xBv0jd
	 J4sXxU9ZOXSCoa3pv5Wq/H1xfPM41jIeF2PzaDEPfdegK5IOVWLgweuVl+oUNP2DeK
	 rb/Bz6ZnlJmLIPcgbKbZmitMtiwy4typktG9ny8PEjo4Fv/fsdmyTfSvcu0p1d6BGC
	 Ev/6dVL6bFPkFOP1gj+YDVkjWbt3Zqcgp5852VNscz1C8IU27jpwlFHFQCGkny0fyg
	 OPuKQ6/aaplvHj9u915cuIszbxfL8jK21yDrS4fdOe1SVZU93JzlCJUex/KDI0VHow
	 XRLG6L3LdeldQ==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-zteg06022001.me.com (Postfix) with ESMTPSA id 22E158000D4;
	Sun, 18 Feb 2024 03:18:59 +0000 (UTC)
Message-Id: <BAB814B2-6ED5-4361-8427-68F12A069DB3@me.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Date: Sat, 17 Feb 2024 19:18:48 -0800
In-Reply-To: <cab295b9-3b63-4cf0-a8c6-96f1c7bf7a27@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
 <cab295b9-3b63-4cf0-a8c6-96f1c7bf7a27@gmail.com>
X-Mailer: Apple Mail (2.3774.400.31)
X-Proofpoint-GUID: 1JPY9sZgRVQWra-Kh_wl2IjV6fgnv2pl
X-Proofpoint-ORIG-GUID: 1JPY9sZgRVQWra-Kh_wl2IjV6fgnv2pl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-17_23,2024-02-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 mlxlogscore=999 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402180023
Message-ID-Hash: OVP5NT5CFNCQ3ITJGAVAEIJW4MNG3LFH
X-Message-ID-Hash: OVP5NT5CFNCQ3ITJGAVAEIJW4MNG3LFH
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OVP5NT5CFNCQ3ITJGAVAEIJW4MNG3LFH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============5634348312067224873=="


--===============5634348312067224873==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5C80BC49-7D97-4EE1-A732-6516F5BEEA81"


--Apple-Mail=_5C80BC49-7D97-4EE1-A732-6516F5BEEA81
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I found this on Amazon overnight delivery.  I=E2=80=99ll give it a try =
tomorrow.  Thanks again!
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


--Apple-Mail=_5C80BC49-7D97-4EE1-A732-6516F5BEEA81
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">I found this =
on Amazon overnight delivery. &nbsp;I=E2=80=99ll give it a try tomorrow. =
&nbsp;Thanks again!<div>j</div><div><div style=3D"caret-color: rgb(0, 0, =
0); color: rgb(0, 0, 0);"><img =
src=3D"https://m.media-amazon.com/images/I/71HY79IeqFL._AC_SL1500_.jpg"></=
div></div><div><div><blockquote type=3D"cite"><div>On Feb 17, 2024, at =
6:57=E2=80=AFPM, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div>

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

--Apple-Mail=_5C80BC49-7D97-4EE1-A732-6516F5BEEA81--

--===============5634348312067224873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5634348312067224873==--
