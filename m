Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4134658CC8C
	for <lists+usrp-users@lfdr.de>; Mon,  8 Aug 2022 19:12:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 167A73834B2
	for <lists+usrp-users@lfdr.de>; Mon,  8 Aug 2022 13:12:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659978734; bh=dD+5kSdhJTUszurNL0Pd30OWuaAFHLVv1MPi/VnvSeo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oHJftrFCcZSsBdRB5rPntjt5+ub7r/Jqgtc9UfnAf1MH369Nzl0iadRbr904wVV/5
	 +tUfW2cl4RShka53RBGIbgA8haEPzDugV4Mfw40g7by6TppHuaoMi7z40cr3Uj1U6w
	 rg9uDzukj8318a1mVBXnHCo+CC+zlUSI1sWDz8HSe+MbZ2j6RoKNM90+eN7t1H2ins
	 kGTuP7d/bF7UFnS3sAKFj9Ri+FVNKmgWsekP6XEO52Y2l8SRtophKYvKEtQn6J6mVa
	 Np8TjakTtbLl82W1wpLO8dbBqqre4Dh9l7aS++7aWaTQzv35zcQrCi1AkIHxZZ4dmZ
	 BnBLOz9Z0VHOw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53EF8381926
	for <usrp-users@lists.ettus.com>; Mon,  8 Aug 2022 13:10:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659978609; bh=RJ7OMWke77n3GHD+Q3EMSr8qjj0ZNGtOf6PcVRglYvk=;
	h=Date:To:From:Subject:From;
	b=wiXhARcb7+emKxvKuvIsiSU1TPefME/wqZONxyMSYM9KQIk/vgAGQK17/VB+oIiIU
	 3d64qZajrxcz0cCOC65/MmVFBYKie9tW10hyQvRlixq1hJcC8TkCoNVpT9DZTJuFU0
	 6L2SapY/JVKksgILirXXX6dk1lLFDT1JQtjcpTUF31EARIYjERa7yj+qBtOn0bczCd
	 jfU3++RR0kdZ4v7DeenbeYociTwSAYMed/hUclITXrP6lMbk24UUgYtdfy2mfj4rMi
	 8A1VwdpbixtjguJUilGfJS5A4JRzRpNMPpG09y6e50lzQeeFyHwC6DYa7vMpSDfl/1
	 OctAeidBsMzIg==
Date: Mon, 8 Aug 2022 17:10:09 +0000
To: usrp-users@lists.ettus.com
From: balinfd3@gmail.com
Message-ID: <pZFvIpYIX8SxSrSPZc7VqE4UpmtL6oj4D4UsfL0H4s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XDJB3CL4A7NGN3LXPXY23TALUYARFT4H
X-Message-ID-Hash: XDJB3CL4A7NGN3LXPXY23TALUYARFT4H
X-MailFrom: balinfd3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] get_rx_dboard_iface:  "Path not found in tree" in UHD v4.2.0 but works OK on UHD v3.15.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XDJB3CL4A7NGN3LXPXY23TALUYARFT4H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2889747164447725178=="

This is a multi-part message in MIME format.

--===============2889747164447725178==
Content-Type: multipart/alternative;
 boundary="b1_pZFvIpYIX8SxSrSPZc7VqE4UpmtL6oj4D4UsfL0H4s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pZFvIpYIX8SxSrSPZc7VqE4UpmtL6oj4D4UsfL0H4s
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Everyone,

I have an X300 flashed to match the host UHD ver (4.2.0). I am trying to =
use the command =E2=80=9Cget_rx_dboard_iface=E2=80=9D to access GPIO pin =
settings=E2=80=A6.but I am gettting error:  **=E2=80=9CPath not found in =
tree:  /blocks/0/Radio#1/iface=E2=80=9D**

If I go back to UHD ver 3.15.0 then the command runs successfully

Below is a simple code that fails on UHD v4.2.0 but works OK on v.3.15.0

\#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

\#include <uhd/utils/thread.hpp>

\#include <uhd/utils/safe_main.hpp>

\#include <uhd/usrp/multi_usrp.hpp>

\#include <uhd/exception.hpp>

\#include <uhd/types/tune_request.hpp>

\#include <boost/program_options.hpp>

\#include <boost/format.hpp>

\#include <boost/thread.hpp>

\#include <iostream>

int main()

{

// Initialize USRP receiver and Rx stream--------------------------------=
--

    uhd::usrp::multi_usrp::sptr usrp;

    uhd::rx_streamer::sptr rxStream;

 =20

    // Setup USRP x300s

    uhd::device_addr_t devAddr;

    devAddr\["addr0"\] =3D "192.168.130.2";

    usrp =3D uhd::usrp::multi_usrp::make(devAddr);

    // Setup channels

    uhd::usrp::subdev_spec_t rxSpec("A:0 B:0");=20

    usrp->set_rx_subdev_spec(rxSpec);

   //Get dBoard info:

    uhd::usrp::dboard_iface::sptr dBoard;

    dBoard =3D usrp->get_rx_dboard_iface(0); // < =E2=80=94=E2=80=94- FAI=
LS here

   =20

    #std::cout << dBoard << std::endl;

    return EXIT_SUCCESS;

}

\#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The =E2=80=9Cuhd_usrp_probe =E2=80=94tree =E2=80=9D output for V4.2.0 is:

/mboards

/mboards/0

/mboards/0/fpga_version

/mboards/0/fpga_version_hash

/mboards/0/fw_version

/mboards/0/eeprom

/mboards/0/name

/mboards/0/codename

/mboards/0/master_clock_rate

/mboards/0/time_source

/mboards/0/time_source/value

/mboards/0/time_source/options

/mboards/0/time_source/output

/mboards/0/clock_source

/mboards/0/clock_source/value

/mboards/0/clock_source/options

/mboards/0/clock_source/external

/mboards/0/clock_source/external/freq

/mboards/0/clock_source/external/freq/options

/mboards/0/clock_source/external/value

/mboards/0/clock_source/output

/mboards/0/tick_rate

/mboards/0/sensors

/mboards/0/sensors/ref_locked

/name

/blocks

/blocks/0

/blocks/0/DUC#0

/blocks/0/DUC#0/noc_id

/blocks/0/DDC#0

/blocks/0/DDC#0/noc_id

/blocks/0/Radio#0

/blocks/0/Radio#0/noc_id

/blocks/0/Radio#0/tx_codec

/blocks/0/Radio#0/tx_codec/gains

/blocks/0/Radio#0/tx_codec/name

/blocks/0/Radio#0/rx_codec

/blocks/0/Radio#0/rx_codec/name

/blocks/0/Radio#0/rx_codec/gains

/blocks/0/Radio#0/rx_codec/gains/digital

/blocks/0/Radio#0/rx_codec/gains/digital/range

/blocks/0/Radio#0/rx_codec/gains/digital/value

/blocks/0/Radio#0/dboard

/blocks/0/Radio#0/dboard/rx_eeprom

/blocks/0/Radio#0/dboard/tx_eeprom

/blocks/0/Radio#0/dboard/gdb_eeprom

/blocks/0/Radio#0/dboard/iface

/blocks/0/Radio#0/dboard/rx_frontends

/blocks/0/Radio#0/dboard/rx_frontends/0

/blocks/0/Radio#0/dboard/rx_frontends/0/name

/blocks/0/Radio#0/dboard/rx_frontends/0/id

/blocks/0/Radio#0/dboard/rx_frontends/0/gains

/blocks/0/Radio#0/dboard/rx_frontends/0/freq

/blocks/0/Radio#0/dboard/rx_frontends/0/freq/value

/blocks/0/Radio#0/dboard/rx_frontends/0/freq/range

/blocks/0/Radio#0/dboard/rx_frontends/0/antenna

/blocks/0/Radio#0/dboard/rx_frontends/0/antenna/value

/blocks/0/Radio#0/dboard/rx_frontends/0/antenna/options

/blocks/0/Radio#0/dboard/rx_frontends/0/sensors

/blocks/0/Radio#0/dboard/rx_frontends/0/connection

/blocks/0/Radio#0/dboard/rx_frontends/0/enabled

/blocks/0/Radio#0/dboard/rx_frontends/0/use_lo_offset

/blocks/0/Radio#0/dboard/rx_frontends/0/bandwidth

/blocks/0/Radio#0/dboard/rx_frontends/0/bandwidth/value

/blocks/0/Radio#0/dboard/rx_frontends/0/bandwidth/range

/blocks/0/Radio#0/dboard/rx_frontends/1

/blocks/0/Radio#0/dboard/rx_frontends/1/name

/blocks/0/Radio#0/dboard/rx_frontends/1/id

/blocks/0/Radio#0/dboard/rx_frontends/1/gains

/blocks/0/Radio#0/dboard/rx_frontends/1/freq

/blocks/0/Radio#0/dboard/rx_frontends/1/freq/value

/blocks/0/Radio#0/dboard/rx_frontends/1/freq/range

/blocks/0/Radio#0/dboard/rx_frontends/1/antenna

/blocks/0/Radio#0/dboard/rx_frontends/1/antenna/value

/blocks/0/Radio#0/dboard/rx_frontends/1/antenna/options

/blocks/0/Radio#0/dboard/rx_frontends/1/sensors

/blocks/0/Radio#0/dboard/rx_frontends/1/connection

/blocks/0/Radio#0/dboard/rx_frontends/1/enabled

/blocks/0/Radio#0/dboard/rx_frontends/1/use_lo_offset

/blocks/0/Radio#0/dboard/rx_frontends/1/bandwidth

/blocks/0/Radio#0/dboard/rx_frontends/1/bandwidth/value

/blocks/0/Radio#0/dboard/rx_frontends/1/bandwidth/range

/blocks/0/Radio#0/dboard/tx_frontends

/blocks/0/Radio#0/dboard/tx_frontends/0

/blocks/0/Radio#0/dboard/tx_frontends/0/name

/blocks/0/Radio#0/dboard/tx_frontends/0/gains

/blocks/0/Radio#0/dboard/tx_frontends/0/freq

/blocks/0/Radio#0/dboard/tx_frontends/0/freq/value

/blocks/0/Radio#0/dboard/tx_frontends/0/freq/range

/blocks/0/Radio#0/dboard/tx_frontends/0/antenna

/blocks/0/Radio#0/dboard/tx_frontends/0/antenna/value

/blocks/0/Radio#0/dboard/tx_frontends/0/antenna/options

/blocks/0/Radio#0/dboard/tx_frontends/0/sensors

/blocks/0/Radio#0/dboard/tx_frontends/0/connection

/blocks/0/Radio#0/dboard/tx_frontends/0/enabled

/blocks/0/Radio#0/dboard/tx_frontends/0/use_lo_offset

/blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth

/blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth/value

/blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth/range

/blocks/0/Radio#0/frontends

/blocks/0/Radio#0/frontends/rx_fe_corrections

/blocks/0/Radio#0/frontends/rx_fe_corrections/0

/blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset

/blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/range

/blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/value

/blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/enable

/blocks/0/Radio#0/frontends/rx_fe_corrections/0/iq_balance

/blocks/0/Radio#0/frontends/rx_fe_corrections/0/iq_balance/value

/blocks/0/Radio#0/frontends/rx_fe_corrections/1

/blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset

/blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset/range

/blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset/value

/blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset/enable

/blocks/0/Radio#0/frontends/rx_fe_corrections/1/iq_balance

/blocks/0/Radio#0/frontends/rx_fe_corrections/1/iq_balance/value

/blocks/0/Radio#0/frontends/tx_fe_corrections

/blocks/0/Radio#0/frontends/tx_fe_corrections/0

/blocks/0/Radio#0/frontends/tx_fe_corrections/0/dc_offset

/blocks/0/Radio#0/frontends/tx_fe_corrections/0/dc_offset/range

/blocks/0/Radio#0/frontends/tx_fe_corrections/0/dc_offset/value

/blocks/0/Radio#0/frontends/tx_fe_corrections/0/iq_balance

/blocks/0/Radio#0/frontends/tx_fe_corrections/0/iq_balance/value

/blocks/0/DUC#1

/blocks/0/DUC#1/noc_id

/blocks/0/DDC#1

/blocks/0/DDC#1/noc_id

/blocks/0/Radio#1

/blocks/0/Radio#1/noc_id

/blocks/0/Radio#1/tx_codec

/blocks/0/Radio#1/tx_codec/gains

/blocks/0/Radio#1/tx_codec/name

/blocks/0/Radio#1/rx_codec

/blocks/0/Radio#1/rx_codec/name

/blocks/0/Radio#1/rx_codec/gains

/blocks/0/Radio#1/rx_codec/gains/digital

/blocks/0/Radio#1/rx_codec/gains/digital/range

/blocks/0/Radio#1/rx_codec/gains/digital/value

/blocks/0/Radio#1/dboard

/blocks/0/Radio#1/dboard/rx_eeprom

/blocks/0/Radio#1/dboard/tx_eeprom

/blocks/0/Radio#1/dboard/gdb_eeprom

/blocks/0/Radio#1/dboard/iface

/blocks/0/Radio#1/dboard/rx_frontends

/blocks/0/Radio#1/dboard/rx_frontends/0

/blocks/0/Radio#1/dboard/rx_frontends/0/name

/blocks/0/Radio#1/dboard/rx_frontends/0/id

/blocks/0/Radio#1/dboard/rx_frontends/0/gains

/blocks/0/Radio#1/dboard/rx_frontends/0/freq

/blocks/0/Radio#1/dboard/rx_frontends/0/freq/value

/blocks/0/Radio#1/dboard/rx_frontends/0/freq/range

/blocks/0/Radio#1/dboard/rx_frontends/0/antenna

/blocks/0/Radio#1/dboard/rx_frontends/0/antenna/value

/blocks/0/Radio#1/dboard/rx_frontends/0/antenna/options

/blocks/0/Radio#1/dboard/rx_frontends/0/sensors

/blocks/0/Radio#1/dboard/rx_frontends/0/connection

/blocks/0/Radio#1/dboard/rx_frontends/0/enabled

/blocks/0/Radio#1/dboard/rx_frontends/0/use_lo_offset

/blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth

/blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth/value

/blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth/range

/blocks/0/Radio#1/dboard/rx_frontends/1

/blocks/0/Radio#1/dboard/rx_frontends/1/name

/blocks/0/Radio#1/dboard/rx_frontends/1/id

/blocks/0/Radio#1/dboard/rx_frontends/1/gains

/blocks/0/Radio#1/dboard/rx_frontends/1/freq

/blocks/0/Radio#1/dboard/rx_frontends/1/freq/value

/blocks/0/Radio#1/dboard/rx_frontends/1/freq/range

/blocks/0/Radio#1/dboard/rx_frontends/1/antenna

/blocks/0/Radio#1/dboard/rx_frontends/1/antenna/value

/blocks/0/Radio#1/dboard/rx_frontends/1/antenna/options

/blocks/0/Radio#1/dboard/rx_frontends/1/sensors

/blocks/0/Radio#1/dboard/rx_frontends/1/connection

/blocks/0/Radio#1/dboard/rx_frontends/1/enabled

/blocks/0/Radio#1/dboard/rx_frontends/1/use_lo_offset

/blocks/0/Radio#1/dboard/rx_frontends/1/bandwidth

/blocks/0/Radio#1/dboard/rx_frontends/1/bandwidth/value

/blocks/0/Radio#1/dboard/rx_frontends/1/bandwidth/range

/blocks/0/Radio#1/dboard/tx_frontends

/blocks/0/Radio#1/dboard/tx_frontends/0

/blocks/0/Radio#1/dboard/tx_frontends/0/name

/blocks/0/Radio#1/dboard/tx_frontends/0/gains

/blocks/0/Radio#1/dboard/tx_frontends/0/freq

/blocks/0/Radio#1/dboard/tx_frontends/0/freq/value

/blocks/0/Radio#1/dboard/tx_frontends/0/freq/range

/blocks/0/Radio#1/dboard/tx_frontends/0/antenna

/blocks/0/Radio#1/dboard/tx_frontends/0/antenna/value

/blocks/0/Radio#1/dboard/tx_frontends/0/antenna/options

/blocks/0/Radio#1/dboard/tx_frontends/0/sensors

/blocks/0/Radio#1/dboard/tx_frontends/0/connection

/blocks/0/Radio#1/dboard/tx_frontends/0/enabled

/blocks/0/Radio#1/dboard/tx_frontends/0/use_lo_offset

/blocks/0/Radio#1/dboard/tx_frontends/0/bandwidth

/blocks/0/Radio#1/dboard/tx_frontends/0/bandwidth/value

/blocks/0/Radio#1/dboard/tx_frontends/0/bandwidth/range

/blocks/0/Radio#1/frontends

/blocks/0/Radio#1/frontends/rx_fe_corrections

/blocks/0/Radio#1/frontends/rx_fe_corrections/0

/blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset

/blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset/range

/blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset/value

/blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset/enable

/blocks/0/Radio#1/frontends/rx_fe_corrections/0/iq_balance

/blocks/0/Radio#1/frontends/rx_fe_corrections/0/iq_balance/value

/blocks/0/Radio#1/frontends/rx_fe_corrections/1

/blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset

/blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/range

/blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/value

/blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/enable

/blocks/0/Radio#1/frontends/rx_fe_corrections/1/iq_balance

/blocks/0/Radio#1/frontends/rx_fe_corrections/1/iq_balance/value

/blocks/0/Radio#1/frontends/tx_fe_corrections

/blocks/0/Radio#1/frontends/tx_fe_corrections/0

/blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset

/blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset/range

/blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset/value

/blocks/0/Radio#1/frontends/tx_fe_corrections/0/iq_balance

/blocks/0/Radio#1/frontends/tx_fe_corrections/0/iq_balance/value

/blocks/0/Replay#0

/blocks/0/Replay#0/noc_id

Thank you for any assistance!

--b1_pZFvIpYIX8SxSrSPZc7VqE4UpmtL6oj4D4UsfL0H4s
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Everyone,</p><p>I have an X300 flashed to match the host UHD ver (=
4.2.0). I am trying to use the command =E2=80=9Cget_rx_dboard_iface=
=E2=80=9D to access GPIO pin settings=E2=80=A6.but I am gettting error:  <s=
trong>=E2=80=9CPath not found in tree:  /blocks/0/Radio#1/iface=E2=80=9D</s=
trong></p><p>If I go back to UHD ver 3.15.0 then the command runs successfu=
lly</p><p>Below is a simple code that fails on UHD v4.2.0 but works OK on v=
.3.15.0</p><p>#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p=
><p>#include &lt;uhd/utils/thread.hpp&gt;</p><p>#include &lt;uhd/utils/safe=
_main.hpp&gt;</p><p>#include &lt;uhd/usrp/multi_usrp.hpp&gt;</p><p>#include=
 &lt;uhd/exception.hpp&gt;</p><p>#include &lt;uhd/types/tune_request.hpp&gt=
;</p><p>#include &lt;boost/program_options.hpp&gt;</p><p>#include &lt;boost=
/format.hpp&gt;</p><p>#include &lt;boost/thread.hpp&gt;</p><p>#include &lt;=
iostream&gt;</p><p>int main()</p><p>{</p><p>// Initialize USRP receiver and=
 Rx stream----------------------------------</p><p>    uhd::usrp::multi_usr=
p::sptr usrp;</p><p>    uhd::rx_streamer::sptr rxStream;</p><p>  </p><p>   =
 // Setup USRP x300s</p><p>    uhd::device_addr_t devAddr;</p><p>    devAdd=
r["addr0"] =3D "192.168.130.2";</p><p>    usrp =3D uhd::usrp::multi_usrp::m=
ake(devAddr);</p><p><br></p><p>    // Setup channels</p><p>    uhd::usrp::s=
ubdev_spec_t rxSpec("A:0 B:0"); </p><p>    usrp-&gt;set_rx_subdev_spec(rxSp=
ec);</p><p><br></p><p>   //Get dBoard info:</p><p>    uhd::usrp::dboard_ifa=
ce::sptr dBoard;</p><p>    dBoard =3D usrp-&gt;get_rx_dboard_iface(0); // &=
lt; =E2=80=94=E2=80=94- FAILS here</p><p>    </p><p>    #std::cout &lt;&lt;=
 dBoard &lt;&lt; std::endl;</p><p>    return EXIT_SUCCESS;</p><p>}</p><p>#=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>The =
=E2=80=9Cuhd_usrp_probe =E2=80=94tree =E2=80=9D output for V4.2.0 is:</p><p=
>/mboards</p><p>/mboards/0</p><p>/mboards/0/fpga_version</p><p>/mboards/0/f=
pga_version_hash</p><p>/mboards/0/fw_version</p><p>/mboards/0/eeprom</p><p>=
/mboards/0/name</p><p>/mboards/0/codename</p><p>/mboards/0/master_clock_rat=
e</p><p>/mboards/0/time_source</p><p>/mboards/0/time_source/value</p><p>/mb=
oards/0/time_source/options</p><p>/mboards/0/time_source/output</p><p>/mboa=
rds/0/clock_source</p><p>/mboards/0/clock_source/value</p><p>/mboards/0/clo=
ck_source/options</p><p>/mboards/0/clock_source/external</p><p>/mboards/0/c=
lock_source/external/freq</p><p>/mboards/0/clock_source/external/freq/optio=
ns</p><p>/mboards/0/clock_source/external/value</p><p>/mboards/0/clock_sour=
ce/output</p><p>/mboards/0/tick_rate</p><p>/mboards/0/sensors</p><p>/mboard=
s/0/sensors/ref_locked</p><p>/name</p><p>/blocks</p><p>/blocks/0</p><p>/blo=
cks/0/DUC#0</p><p>/blocks/0/DUC#0/noc_id</p><p>/blocks/0/DDC#0</p><p>/block=
s/0/DDC#0/noc_id</p><p>/blocks/0/Radio#0</p><p>/blocks/0/Radio#0/noc_id</p>=
<p>/blocks/0/Radio#0/tx_codec</p><p>/blocks/0/Radio#0/tx_codec/gains</p><p>=
/blocks/0/Radio#0/tx_codec/name</p><p>/blocks/0/Radio#0/rx_codec</p><p>/blo=
cks/0/Radio#0/rx_codec/name</p><p>/blocks/0/Radio#0/rx_codec/gains</p><p>/b=
locks/0/Radio#0/rx_codec/gains/digital</p><p>/blocks/0/Radio#0/rx_codec/gai=
ns/digital/range</p><p>/blocks/0/Radio#0/rx_codec/gains/digital/value</p><p=
>/blocks/0/Radio#0/dboard</p><p>/blocks/0/Radio#0/dboard/rx_eeprom</p><p>/b=
locks/0/Radio#0/dboard/tx_eeprom</p><p>/blocks/0/Radio#0/dboard/gdb_eeprom<=
/p><p>/blocks/0/Radio#0/dboard/iface</p><p>/blocks/0/Radio#0/dboard/rx_fron=
tends</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0</p><p>/blocks/0/Radio#0=
/dboard/rx_frontends/0/name</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/i=
d</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/gains</p><p>/blocks/0/Radio=
#0/dboard/rx_frontends/0/freq</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0=
/freq/value</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/freq/range</p><p>=
/blocks/0/Radio#0/dboard/rx_frontends/0/antenna</p><p>/blocks/0/Radio#0/dbo=
ard/rx_frontends/0/antenna/value</p><p>/blocks/0/Radio#0/dboard/rx_frontend=
s/0/antenna/options</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/sensors</=
p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/connection</p><p>/blocks/0/Rad=
io#0/dboard/rx_frontends/0/enabled</p><p>/blocks/0/Radio#0/dboard/rx_fronte=
nds/0/use_lo_offset</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/bandwidth=
</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/bandwidth/value</p><p>/block=
s/0/Radio#0/dboard/rx_frontends/0/bandwidth/range</p><p>/blocks/0/Radio#0/d=
board/rx_frontends/1</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/name</p>=
<p>/blocks/0/Radio#0/dboard/rx_frontends/1/id</p><p>/blocks/0/Radio#0/dboar=
d/rx_frontends/1/gains</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/freq</=
p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/freq/value</p><p>/blocks/0/Rad=
io#0/dboard/rx_frontends/1/freq/range</p><p>/blocks/0/Radio#0/dboard/rx_fro=
ntends/1/antenna</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/antenna/valu=
e</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/antenna/options</p><p>/bloc=
ks/0/Radio#0/dboard/rx_frontends/1/sensors</p><p>/blocks/0/Radio#0/dboard/r=
x_frontends/1/connection</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/enab=
led</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/use_lo_offset</p><p>/bloc=
ks/0/Radio#0/dboard/rx_frontends/1/bandwidth</p><p>/blocks/0/Radio#0/dboard=
/rx_frontends/1/bandwidth/value</p><p>/blocks/0/Radio#0/dboard/rx_frontends=
/1/bandwidth/range</p><p>/blocks/0/Radio#0/dboard/tx_frontends</p><p>/block=
s/0/Radio#0/dboard/tx_frontends/0</p><p>/blocks/0/Radio#0/dboard/tx_fronten=
ds/0/name</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/gains</p><p>/blocks=
/0/Radio#0/dboard/tx_frontends/0/freq</p><p>/blocks/0/Radio#0/dboard/tx_fro=
ntends/0/freq/value</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/freq/rang=
e</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/antenna</p><p>/blocks/0/Rad=
io#0/dboard/tx_frontends/0/antenna/value</p><p>/blocks/0/Radio#0/dboard/tx_=
frontends/0/antenna/options</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/s=
ensors</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/connection</p><p>/bloc=
ks/0/Radio#0/dboard/tx_frontends/0/enabled</p><p>/blocks/0/Radio#0/dboard/t=
x_frontends/0/use_lo_offset</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/b=
andwidth</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth/value</p><=
p>/blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth/range</p><p>/blocks/0/R=
adio#0/frontends</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections</p><p>=
/blocks/0/Radio#0/frontends/rx_fe_corrections/0</p><p>/blocks/0/Radio#0/fro=
ntends/rx_fe_corrections/0/dc_offset</p><p>/blocks/0/Radio#0/frontends/rx_f=
e_corrections/0/dc_offset/range</p><p>/blocks/0/Radio#0/frontends/rx_fe_cor=
rections/0/dc_offset/value</p><p>/blocks/0/Radio#0/frontends/rx_fe_correcti=
ons/0/dc_offset/enable</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/=
0/iq_balance</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/0/iq_balan=
ce/value</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/1</p><p>/block=
s/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset</p><p>/blocks/0/Radio#0=
/frontends/rx_fe_corrections/1/dc_offset/range</p><p>/blocks/0/Radio#0/fron=
tends/rx_fe_corrections/1/dc_offset/value</p><p>/blocks/0/Radio#0/frontends=
/rx_fe_corrections/1/dc_offset/enable</p><p>/blocks/0/Radio#0/frontends/rx_=
fe_corrections/1/iq_balance</p><p>/blocks/0/Radio#0/frontends/rx_fe_correct=
ions/1/iq_balance/value</p><p>/blocks/0/Radio#0/frontends/tx_fe_corrections=
</p><p>/blocks/0/Radio#0/frontends/tx_fe_corrections/0</p><p>/blocks/0/Radi=
o#0/frontends/tx_fe_corrections/0/dc_offset</p><p>/blocks/0/Radio#0/fronten=
ds/tx_fe_corrections/0/dc_offset/range</p><p>/blocks/0/Radio#0/frontends/tx=
_fe_corrections/0/dc_offset/value</p><p>/blocks/0/Radio#0/frontends/tx_fe_c=
orrections/0/iq_balance</p><p>/blocks/0/Radio#0/frontends/tx_fe_corrections=
/0/iq_balance/value</p><p>/blocks/0/DUC#1</p><p>/blocks/0/DUC#1/noc_id</p><=
p>/blocks/0/DDC#1</p><p>/blocks/0/DDC#1/noc_id</p><p>/blocks/0/Radio#1</p><=
p>/blocks/0/Radio#1/noc_id</p><p>/blocks/0/Radio#1/tx_codec</p><p>/blocks/0=
/Radio#1/tx_codec/gains</p><p>/blocks/0/Radio#1/tx_codec/name</p><p>/blocks=
/0/Radio#1/rx_codec</p><p>/blocks/0/Radio#1/rx_codec/name</p><p>/blocks/0/R=
adio#1/rx_codec/gains</p><p>/blocks/0/Radio#1/rx_codec/gains/digital</p><p>=
/blocks/0/Radio#1/rx_codec/gains/digital/range</p><p>/blocks/0/Radio#1/rx_c=
odec/gains/digital/value</p><p>/blocks/0/Radio#1/dboard</p><p>/blocks/0/Rad=
io#1/dboard/rx_eeprom</p><p>/blocks/0/Radio#1/dboard/tx_eeprom</p><p>/block=
s/0/Radio#1/dboard/gdb_eeprom</p><p>/blocks/0/Radio#1/dboard/iface</p><p>/b=
locks/0/Radio#1/dboard/rx_frontends</p><p>/blocks/0/Radio#1/dboard/rx_front=
ends/0</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/name</p><p>/blocks/0/R=
adio#1/dboard/rx_frontends/0/id</p><p>/blocks/0/Radio#1/dboard/rx_frontends=
/0/gains</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/freq</p><p>/blocks/0=
/Radio#1/dboard/rx_frontends/0/freq/value</p><p>/blocks/0/Radio#1/dboard/rx=
_frontends/0/freq/range</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/anten=
na</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/antenna/value</p><p>/block=
s/0/Radio#1/dboard/rx_frontends/0/antenna/options</p><p>/blocks/0/Radio#1/d=
board/rx_frontends/0/sensors</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/=
connection</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/enabled</p><p>/blo=
cks/0/Radio#1/dboard/rx_frontends/0/use_lo_offset</p><p>/blocks/0/Radio#1/d=
board/rx_frontends/0/bandwidth</p><p>/blocks/0/Radio#1/dboard/rx_frontends/=
0/bandwidth/value</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth/r=
ange</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1</p><p>/blocks/0/Radio#1/=
dboard/rx_frontends/1/name</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/id=
</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/gains</p><p>/blocks/0/Radio#=
1/dboard/rx_frontends/1/freq</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/=
freq/value</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/freq/range</p><p>/=
blocks/0/Radio#1/dboard/rx_frontends/1/antenna</p><p>/blocks/0/Radio#1/dboa=
rd/rx_frontends/1/antenna/value</p><p>/blocks/0/Radio#1/dboard/rx_frontends=
/1/antenna/options</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/sensors</p=
><p>/blocks/0/Radio#1/dboard/rx_frontends/1/connection</p><p>/blocks/0/Radi=
o#1/dboard/rx_frontends/1/enabled</p><p>/blocks/0/Radio#1/dboard/rx_fronten=
ds/1/use_lo_offset</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/bandwidth<=
/p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/bandwidth/value</p><p>/blocks=
/0/Radio#1/dboard/rx_frontends/1/bandwidth/range</p><p>/blocks/0/Radio#1/db=
oard/tx_frontends</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0</p><p>/bloc=
ks/0/Radio#1/dboard/tx_frontends/0/name</p><p>/blocks/0/Radio#1/dboard/tx_f=
rontends/0/gains</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/freq</p><p>/=
blocks/0/Radio#1/dboard/tx_frontends/0/freq/value</p><p>/blocks/0/Radio#1/d=
board/tx_frontends/0/freq/range</p><p>/blocks/0/Radio#1/dboard/tx_frontends=
/0/antenna</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/antenna/value</p><=
p>/blocks/0/Radio#1/dboard/tx_frontends/0/antenna/options</p><p>/blocks/0/R=
adio#1/dboard/tx_frontends/0/sensors</p><p>/blocks/0/Radio#1/dboard/tx_fron=
tends/0/connection</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/enabled</p=
><p>/blocks/0/Radio#1/dboard/tx_frontends/0/use_lo_offset</p><p>/blocks/0/R=
adio#1/dboard/tx_frontends/0/bandwidth</p><p>/blocks/0/Radio#1/dboard/tx_fr=
ontends/0/bandwidth/value</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/ban=
dwidth/range</p><p>/blocks/0/Radio#1/frontends</p><p>/blocks/0/Radio#1/fron=
tends/rx_fe_corrections</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections=
/0</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset</p><p>/b=
locks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset/range</p><p>/blocks=
/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset/value</p><p>/blocks/0/Ra=
dio#1/frontends/rx_fe_corrections/0/dc_offset/enable</p><p>/blocks/0/Radio#=
1/frontends/rx_fe_corrections/0/iq_balance</p><p>/blocks/0/Radio#1/frontend=
s/rx_fe_corrections/0/iq_balance/value</p><p>/blocks/0/Radio#1/frontends/rx=
_fe_corrections/1</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_=
offset</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/rang=
e</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/value</p>=
<p>/blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/enable</p><p>/=
blocks/0/Radio#1/frontends/rx_fe_corrections/1/iq_balance</p><p>/blocks/0/R=
adio#1/frontends/rx_fe_corrections/1/iq_balance/value</p><p>/blocks/0/Radio=
#1/frontends/tx_fe_corrections</p><p>/blocks/0/Radio#1/frontends/tx_fe_corr=
ections/0</p><p>/blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset</=
p><p>/blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset/range</p><p>=
/blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset/value</p><p>/bloc=
ks/0/Radio#1/frontends/tx_fe_corrections/0/iq_balance</p><p>/blocks/0/Radio=
#1/frontends/tx_fe_corrections/0/iq_balance/value</p><p>/blocks/0/Replay#0<=
/p><p>/blocks/0/Replay#0/noc_id</p><p><br></p><p>Thank you for any assistan=
ce!</p>

--b1_pZFvIpYIX8SxSrSPZc7VqE4UpmtL6oj4D4UsfL0H4s--

--===============2889747164447725178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2889747164447725178==--
