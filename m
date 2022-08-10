Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F9358E4F2
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 04:42:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42971383C3A
	for <lists+usrp-users@lfdr.de>; Tue,  9 Aug 2022 22:42:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660099369; bh=Z+QJNT3iXM6fhdo8k3wZa0bMwDfYrc05XY1AvcotuFo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=C5uF9H3hcbJFGVdhaOvLdzGtizredc1u50/7qd6xYG7jFjRXTq543eXAbIuFQ9zQu
	 7QiifwtOR371s8L08iRNEfa38a/YgbwgWfy5FaDWHT9x2UwwY4GsALC1e6+f2BdoYf
	 X9CP6+EAX+G9H1V86ytZigSjRLQ6fAU8bTTE7Of2Sq3yCBtbd/eyzk4hToQw6zjrK3
	 +lzu3MiDUtAt1Xjh7TwxlR9nCTpQYeBDm4nC2jeYv7AOuGxfYRC87jHnKqQGkiLsCn
	 5JYJmKzD3ZHvTDSkw6mDxCPV3lOG4wmJMtWUBI7Net8OEOvKBqKluFQyX3SqWX8vei
	 wa5mo3s72Z+wA==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 55D6C383B75
	for <usrp-users@lists.ettus.com>; Tue,  9 Aug 2022 22:40:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="eM17iQss";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id c20so393609qtw.8
        for <usrp-users@lists.ettus.com>; Tue, 09 Aug 2022 19:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=C4kRjB3VjKnKnUMeZWgPST6W4KA2uT7MOu5L11Dat5s=;
        b=eM17iQssVoFiHCDU/AgNtf35Aab0CEpaVlVb2XEBzzZNr5zWuB+/2X8V8te36ZMhjA
         PCKNVGd237WFcjT0MOLV719yD6OK5ySrobfFDcB0jJ3pUQ+hOPzYRNzbCPVwDqKXtVF7
         dFLunih+0mZ1vY+3FTYRzBadzWW9oAZy23psClQMFPkPTMWlPg/NWkM3KjjKkVTP4m+r
         HfgmD3sjJMa4lINwG8xC/7FX4Qk5KLpGhjLmpIC+IsVn/GLOkcnmBoBmL5ePUUe502gN
         +93C+pdBruixoBtEB3s7cI9I/IT8dQNtXXzsmHZCdqp0UHiFCEAtIJcWnwhOZODEeYg6
         i1Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=C4kRjB3VjKnKnUMeZWgPST6W4KA2uT7MOu5L11Dat5s=;
        b=3b8A6iC5yO9puamP/16+VFUzE1Ke46MjC7zP0IEHZy163X4Fqodj92k37/+fIOAWzI
         CBlFRIGb5sZvqzW01Ccd2bYAgB5uNXz3bIMXeVB3DmNLRd5VlsdSgTN9qqgcFuE2ekw7
         rbGIdnm3V95TA5Zic4HKCKWkG+TqMBYYmKSZFRTykMCbTAXjbmVyGCbI8ug/VdpwjfG+
         uceNRHu0khqhW2AmSIQ8vB2P2fwr3HJTeMohav2V1XbKzxbOyCqqmC+7TGFRPRrBaVqa
         5FFvBgY7gV0+GozS6RINBJ1WmZLGtldSZP41lPYultp4lJmXhZmUXxrA2pI02X8xZSyc
         iiDA==
X-Gm-Message-State: ACgBeo1TcSTCRDhbWl8LIsbu8pRUFCFTP0NvXx4v22K3gsZJmkVL6tgn
	8HJa7UOQJjiiKsvnqsbJG4i8vJIH4pBR45FUNJczvtc7
X-Google-Smtp-Source: AA6agR6PKaVO4j0ATQuMKHx27RUdC5uhivJLAIMt9j/kLxFpYpQ4+8LmU7nvkCBM3B+HTBrSX1gkN1VoT2Raxj7x/aE=
X-Received: by 2002:ac8:5aca:0:b0:342:f363:dc83 with SMTP id
 d10-20020ac85aca000000b00342f363dc83mr13887297qtd.276.1660099220558; Tue, 09
 Aug 2022 19:40:20 -0700 (PDT)
MIME-Version: 1.0
References: <pZFvIpYIX8SxSrSPZc7VqE4UpmtL6oj4D4UsfL0H4s@lists.ettus.com>
In-Reply-To: <pZFvIpYIX8SxSrSPZc7VqE4UpmtL6oj4D4UsfL0H4s@lists.ettus.com>
From: Wan Liu <wan.liu@ettus.com>
Date: Tue, 9 Aug 2022 22:40:09 -0400
Message-ID: <CAOcXSJwdhzgVmDOT=oLBjXJCAfg2dGEM38Jut4EwJ5RyyKu94g@mail.gmail.com>
To: balinfd3@gmail.com
Message-ID-Hash: J54SUAAZWAWBUVDWIINDTBH7RBUN2C5T
X-Message-ID-Hash: J54SUAAZWAWBUVDWIINDTBH7RBUN2C5T
X-MailFrom: wan.liu@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: get_rx_dboard_iface: "Path not found in tree" in UHD v4.2.0 but works OK on UHD v3.15.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J54SUAAZWAWBUVDWIINDTBH7RBUN2C5T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7415686902309369077=="

--===============7415686902309369077==
Content-Type: multipart/alternative; boundary="00000000000055674905e5d9f8f6"

--00000000000055674905e5d9f8f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Please also share the output from uhd_usrp_probe --tree on v3.15.0.0. I'm
curious what the fs_path to the iface property in the tree looks like with
v3.15.0.0.

As you can see from your output from uhd_usrp_probe --tree on v4.2.0.0, the
correct fs_path to iface is supposed to be /blocks/0/Radio#1/dboard/iface,
so the iface property is in the tree. Yet get_rx_dboard_iface stripped
"dboard" when evaluating the path.

Can you also call the function get_usrp_rx_info() from multi_usrp.cpp on
both versions? This function evaluates the path to some properties in a
similar manner to get_rx_dboard_iface, so if the problem is related to
evaluating the fs_path, then we should see the issue in both functions.

In the meantime, I will investigate further on my end and try to reproduce
the problem on my end

Regards,

Wan Liu

On Mon, Aug 8, 2022 at 1:10 PM <balinfd3@gmail.com> wrote:

> Hello Everyone,
>
> I have an X300 flashed to match the host UHD ver (4.2.0). I am trying to
> use the command =E2=80=9Cget_rx_dboard_iface=E2=80=9D to access GPIO pin =
settings=E2=80=A6.but I am
> gettting error: *=E2=80=9CPath not found in tree: /blocks/0/Radio#1/iface=
=E2=80=9D*
>
> If I go back to UHD ver 3.15.0 then the command runs successfully
>
> Below is a simple code that fails on UHD v4.2.0 but works OK on v.3.15.0
>
> #=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> #include <uhd/utils/thread.hpp>
>
> #include <uhd/utils/safe_main.hpp>
>
> #include <uhd/usrp/multi_usrp.hpp>
>
> #include <uhd/exception.hpp>
>
> #include <uhd/types/tune_request.hpp>
>
> #include <boost/program_options.hpp>
>
> #include <boost/format.hpp>
>
> #include <boost/thread.hpp>
>
> #include <iostream>
>
> int main()
>
> {
>
> // Initialize USRP receiver and Rx stream--------------------------------=
--
>
> uhd::usrp::multi_usrp::sptr usrp;
>
> uhd::rx_streamer::sptr rxStream;
>
> // Setup USRP x300s
>
> uhd::device_addr_t devAddr;
>
> devAddr["addr0"] =3D "192.168.130.2";
>
> usrp =3D uhd::usrp::multi_usrp::make(devAddr);
>
>
> // Setup channels
>
> uhd::usrp::subdev_spec_t rxSpec("A:0 B:0");
>
> usrp->set_rx_subdev_spec(rxSpec);
>
>
> //Get dBoard info:
>
> uhd::usrp::dboard_iface::sptr dBoard;
>
> dBoard =3D usrp->get_rx_dboard_iface(0); // < =E2=80=94=E2=80=94- FAILS h=
ere
>
> #std::cout << dBoard << std::endl;
>
> return EXIT_SUCCESS;
>
> }
>
> #=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The =E2=80=9Cuhd_usrp_probe =E2=80=94tree =E2=80=9D output for V4.2.0 is:
>
> /mboards
>
> /mboards/0
>
> /mboards/0/fpga_version
>
> /mboards/0/fpga_version_hash
>
> /mboards/0/fw_version
>
> /mboards/0/eeprom
>
> /mboards/0/name
>
> /mboards/0/codename
>
> /mboards/0/master_clock_rate
>
> /mboards/0/time_source
>
> /mboards/0/time_source/value
>
> /mboards/0/time_source/options
>
> /mboards/0/time_source/output
>
> /mboards/0/clock_source
>
> /mboards/0/clock_source/value
>
> /mboards/0/clock_source/options
>
> /mboards/0/clock_source/external
>
> /mboards/0/clock_source/external/freq
>
> /mboards/0/clock_source/external/freq/options
>
> /mboards/0/clock_source/external/value
>
> /mboards/0/clock_source/output
>
> /mboards/0/tick_rate
>
> /mboards/0/sensors
>
> /mboards/0/sensors/ref_locked
>
> /name
>
> /blocks
>
> /blocks/0
>
> /blocks/0/DUC#0
>
> /blocks/0/DUC#0/noc_id
>
> /blocks/0/DDC#0
>
> /blocks/0/DDC#0/noc_id
>
> /blocks/0/Radio#0
>
> /blocks/0/Radio#0/noc_id
>
> /blocks/0/Radio#0/tx_codec
>
> /blocks/0/Radio#0/tx_codec/gains
>
> /blocks/0/Radio#0/tx_codec/name
>
> /blocks/0/Radio#0/rx_codec
>
> /blocks/0/Radio#0/rx_codec/name
>
> /blocks/0/Radio#0/rx_codec/gains
>
> /blocks/0/Radio#0/rx_codec/gains/digital
>
> /blocks/0/Radio#0/rx_codec/gains/digital/range
>
> /blocks/0/Radio#0/rx_codec/gains/digital/value
>
> /blocks/0/Radio#0/dboard
>
> /blocks/0/Radio#0/dboard/rx_eeprom
>
> /blocks/0/Radio#0/dboard/tx_eeprom
>
> /blocks/0/Radio#0/dboard/gdb_eeprom
>
> /blocks/0/Radio#0/dboard/iface
>
> /blocks/0/Radio#0/dboard/rx_frontends
>
> /blocks/0/Radio#0/dboard/rx_frontends/0
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/name
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/id
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/gains
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/freq
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/freq/value
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/freq/range
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/antenna
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/antenna/value
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/antenna/options
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/sensors
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/connection
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/enabled
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/use_lo_offset
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/bandwidth
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/bandwidth/value
>
> /blocks/0/Radio#0/dboard/rx_frontends/0/bandwidth/range
>
> /blocks/0/Radio#0/dboard/rx_frontends/1
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/name
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/id
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/gains
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/freq
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/freq/value
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/freq/range
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/antenna
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/antenna/value
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/antenna/options
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/sensors
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/connection
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/enabled
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/use_lo_offset
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/bandwidth
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/bandwidth/value
>
> /blocks/0/Radio#0/dboard/rx_frontends/1/bandwidth/range
>
> /blocks/0/Radio#0/dboard/tx_frontends
>
> /blocks/0/Radio#0/dboard/tx_frontends/0
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/name
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/gains
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/freq
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/freq/value
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/freq/range
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/antenna
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/antenna/value
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/antenna/options
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/sensors
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/connection
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/enabled
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/use_lo_offset
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth/value
>
> /blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth/range
>
> /blocks/0/Radio#0/frontends
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/0
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/range
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/value
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/enable
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/0/iq_balance
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/0/iq_balance/value
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/1
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset/range
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset/value
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset/enable
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/1/iq_balance
>
> /blocks/0/Radio#0/frontends/rx_fe_corrections/1/iq_balance/value
>
> /blocks/0/Radio#0/frontends/tx_fe_corrections
>
> /blocks/0/Radio#0/frontends/tx_fe_corrections/0
>
> /blocks/0/Radio#0/frontends/tx_fe_corrections/0/dc_offset
>
> /blocks/0/Radio#0/frontends/tx_fe_corrections/0/dc_offset/range
>
> /blocks/0/Radio#0/frontends/tx_fe_corrections/0/dc_offset/value
>
> /blocks/0/Radio#0/frontends/tx_fe_corrections/0/iq_balance
>
> /blocks/0/Radio#0/frontends/tx_fe_corrections/0/iq_balance/value
>
> /blocks/0/DUC#1
>
> /blocks/0/DUC#1/noc_id
>
> /blocks/0/DDC#1
>
> /blocks/0/DDC#1/noc_id
>
> /blocks/0/Radio#1
>
> /blocks/0/Radio#1/noc_id
>
> /blocks/0/Radio#1/tx_codec
>
> /blocks/0/Radio#1/tx_codec/gains
>
> /blocks/0/Radio#1/tx_codec/name
>
> /blocks/0/Radio#1/rx_codec
>
> /blocks/0/Radio#1/rx_codec/name
>
> /blocks/0/Radio#1/rx_codec/gains
>
> /blocks/0/Radio#1/rx_codec/gains/digital
>
> /blocks/0/Radio#1/rx_codec/gains/digital/range
>
> /blocks/0/Radio#1/rx_codec/gains/digital/value
>
> /blocks/0/Radio#1/dboard
>
> /blocks/0/Radio#1/dboard/rx_eeprom
>
> /blocks/0/Radio#1/dboard/tx_eeprom
>
> /blocks/0/Radio#1/dboard/gdb_eeprom
>
> /blocks/0/Radio#1/dboard/iface
>
> /blocks/0/Radio#1/dboard/rx_frontends
>
> /blocks/0/Radio#1/dboard/rx_frontends/0
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/name
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/id
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/gains
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/freq
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/freq/value
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/freq/range
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/antenna
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/antenna/value
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/antenna/options
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/sensors
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/connection
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/enabled
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/use_lo_offset
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth/value
>
> /blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth/range
>
> /blocks/0/Radio#1/dboard/rx_frontends/1
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/name
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/id
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/gains
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/freq
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/freq/value
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/freq/range
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/antenna
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/antenna/value
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/antenna/options
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/sensors
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/connection
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/enabled
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/use_lo_offset
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/bandwidth
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/bandwidth/value
>
> /blocks/0/Radio#1/dboard/rx_frontends/1/bandwidth/range
>
> /blocks/0/Radio#1/dboard/tx_frontends
>
> /blocks/0/Radio#1/dboard/tx_frontends/0
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/name
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/gains
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/freq
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/freq/value
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/freq/range
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/antenna
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/antenna/value
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/antenna/options
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/sensors
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/connection
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/enabled
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/use_lo_offset
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/bandwidth
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/bandwidth/value
>
> /blocks/0/Radio#1/dboard/tx_frontends/0/bandwidth/range
>
> /blocks/0/Radio#1/frontends
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/0
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset/range
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset/value
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/0/dc_offset/enable
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/0/iq_balance
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/0/iq_balance/value
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/1
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/range
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/value
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/1/dc_offset/enable
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/1/iq_balance
>
> /blocks/0/Radio#1/frontends/rx_fe_corrections/1/iq_balance/value
>
> /blocks/0/Radio#1/frontends/tx_fe_corrections
>
> /blocks/0/Radio#1/frontends/tx_fe_corrections/0
>
> /blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset
>
> /blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset/range
>
> /blocks/0/Radio#1/frontends/tx_fe_corrections/0/dc_offset/value
>
> /blocks/0/Radio#1/frontends/tx_fe_corrections/0/iq_balance
>
> /blocks/0/Radio#1/frontends/tx_fe_corrections/0/iq_balance/value
>
> /blocks/0/Replay#0
>
> /blocks/0/Replay#0/noc_id
>
>
> Thank you for any assistance!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000055674905e5d9f8f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br><br></div><div>Please also share the output=
 from uhd_usrp_probe --tree on v3.15.0.0. I&#39;m curious what the fs_path =
to the iface property in the tree looks like with v3.15.0.0.<br><br></div><=
div>As you can see from your output from uhd_usrp_probe --tree on v4.2.0.0,=
 the correct fs_path to iface is supposed to be /blocks/0/Radio#1/dboard/if=
ace, so the iface property is in the tree. Yet get_rx_dboard_iface stripped=
 &quot;dboard&quot; when evaluating the path. <br><br></div><div>Can you al=
so call the function get_usrp_rx_info() from multi_usrp.cpp on both version=
s? This function evaluates the path to some properties in a similar manner =
to get_rx_dboard_iface, so if the problem is related to evaluating the fs_p=
ath, then we should see the issue in both functions. <br><br></div><div>In =
the meantime, I will investigate further on my end and try to reproduce the=
 problem on my end<br><br></div><div>Regards,<br><br></div><div>Wan Liu<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Aug 8, 2022 at 1:10 PM &lt;<a href=3D"mailto:balinfd3@gmail.c=
om">balinfd3@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>Hello Everyone,</p><p>I have an X300 flashed to ma=
tch the host UHD ver (4.2.0). I am trying to use the command =E2=80=9Cget_r=
x_dboard_iface=E2=80=9D to access GPIO pin settings=E2=80=A6.but I am gettt=
ing error:  <strong>=E2=80=9CPath not found in tree:  /blocks/0/Radio#1/ifa=
ce=E2=80=9D</strong></p><p>If I go back to UHD ver 3.15.0 then the command =
runs successfully</p><p>Below is a simple code that fails on UHD v4.2.0 but=
 works OK on v.3.15.0</p><p>#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</p><p>#include &lt;uhd/utils/thread.hpp&gt;</p><p>#include &lt=
;uhd/utils/safe_main.hpp&gt;</p><p>#include &lt;uhd/usrp/multi_usrp.hpp&gt;=
</p><p>#include &lt;uhd/exception.hpp&gt;</p><p>#include &lt;uhd/types/tune=
_request.hpp&gt;</p><p>#include &lt;boost/program_options.hpp&gt;</p><p>#in=
clude &lt;boost/format.hpp&gt;</p><p>#include &lt;boost/thread.hpp&gt;</p><=
p>#include &lt;iostream&gt;</p><p>int main()</p><p>{</p><p>// Initialize US=
RP receiver and Rx stream----------------------------------</p><p>    uhd::=
usrp::multi_usrp::sptr usrp;</p><p>    uhd::rx_streamer::sptr rxStream;</p>=
<p>  </p><p>    // Setup USRP x300s</p><p>    uhd::device_addr_t devAddr;</=
p><p>    devAddr[&quot;addr0&quot;] =3D &quot;192.168.130.2&quot;;</p><p>  =
  usrp =3D uhd::usrp::multi_usrp::make(devAddr);</p><p><br></p><p>    // Se=
tup channels</p><p>    uhd::usrp::subdev_spec_t rxSpec(&quot;A:0 B:0&quot;)=
; </p><p>    usrp-&gt;set_rx_subdev_spec(rxSpec);</p><p><br></p><p>   //Get=
 dBoard info:</p><p>    uhd::usrp::dboard_iface::sptr dBoard;</p><p>    dBo=
ard =3D usrp-&gt;get_rx_dboard_iface(0); // &lt; =E2=80=94=E2=80=94- FAILS =
here</p><p>    </p><p>    #std::cout &lt;&lt; dBoard &lt;&lt; std::endl;</p=
><p>    return EXIT_SUCCESS;</p><p>}</p><p>#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>The =E2=80=9Cuhd_usrp_probe =E2=80=94t=
ree =E2=80=9D output for V4.2.0 is:</p><p>/mboards</p><p>/mboards/0</p><p>/=
mboards/0/fpga_version</p><p>/mboards/0/fpga_version_hash</p><p>/mboards/0/=
fw_version</p><p>/mboards/0/eeprom</p><p>/mboards/0/name</p><p>/mboards/0/c=
odename</p><p>/mboards/0/master_clock_rate</p><p>/mboards/0/time_source</p>=
<p>/mboards/0/time_source/value</p><p>/mboards/0/time_source/options</p><p>=
/mboards/0/time_source/output</p><p>/mboards/0/clock_source</p><p>/mboards/=
0/clock_source/value</p><p>/mboards/0/clock_source/options</p><p>/mboards/0=
/clock_source/external</p><p>/mboards/0/clock_source/external/freq</p><p>/m=
boards/0/clock_source/external/freq/options</p><p>/mboards/0/clock_source/e=
xternal/value</p><p>/mboards/0/clock_source/output</p><p>/mboards/0/tick_ra=
te</p><p>/mboards/0/sensors</p><p>/mboards/0/sensors/ref_locked</p><p>/name=
</p><p>/blocks</p><p>/blocks/0</p><p>/blocks/0/DUC#0</p><p>/blocks/0/DUC#0/=
noc_id</p><p>/blocks/0/DDC#0</p><p>/blocks/0/DDC#0/noc_id</p><p>/blocks/0/R=
adio#0</p><p>/blocks/0/Radio#0/noc_id</p><p>/blocks/0/Radio#0/tx_codec</p><=
p>/blocks/0/Radio#0/tx_codec/gains</p><p>/blocks/0/Radio#0/tx_codec/name</p=
><p>/blocks/0/Radio#0/rx_codec</p><p>/blocks/0/Radio#0/rx_codec/name</p><p>=
/blocks/0/Radio#0/rx_codec/gains</p><p>/blocks/0/Radio#0/rx_codec/gains/dig=
ital</p><p>/blocks/0/Radio#0/rx_codec/gains/digital/range</p><p>/blocks/0/R=
adio#0/rx_codec/gains/digital/value</p><p>/blocks/0/Radio#0/dboard</p><p>/b=
locks/0/Radio#0/dboard/rx_eeprom</p><p>/blocks/0/Radio#0/dboard/tx_eeprom</=
p><p>/blocks/0/Radio#0/dboard/gdb_eeprom</p><p>/blocks/0/Radio#0/dboard/ifa=
ce</p><p>/blocks/0/Radio#0/dboard/rx_frontends</p><p>/blocks/0/Radio#0/dboa=
rd/rx_frontends/0</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/name</p><p>=
/blocks/0/Radio#0/dboard/rx_frontends/0/id</p><p>/blocks/0/Radio#0/dboard/r=
x_frontends/0/gains</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/freq</p><=
p>/blocks/0/Radio#0/dboard/rx_frontends/0/freq/value</p><p>/blocks/0/Radio#=
0/dboard/rx_frontends/0/freq/range</p><p>/blocks/0/Radio#0/dboard/rx_fronte=
nds/0/antenna</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/antenna/value</=
p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/antenna/options</p><p>/blocks/=
0/Radio#0/dboard/rx_frontends/0/sensors</p><p>/blocks/0/Radio#0/dboard/rx_f=
rontends/0/connection</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/enabled=
</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/use_lo_offset</p><p>/blocks/=
0/Radio#0/dboard/rx_frontends/0/bandwidth</p><p>/blocks/0/Radio#0/dboard/rx=
_frontends/0/bandwidth/value</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/=
bandwidth/range</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1</p><p>/blocks=
/0/Radio#0/dboard/rx_frontends/1/name</p><p>/blocks/0/Radio#0/dboard/rx_fro=
ntends/1/id</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/gains</p><p>/bloc=
ks/0/Radio#0/dboard/rx_frontends/1/freq</p><p>/blocks/0/Radio#0/dboard/rx_f=
rontends/1/freq/value</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/freq/ra=
nge</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/antenna</p><p>/blocks/0/R=
adio#0/dboard/rx_frontends/1/antenna/value</p><p>/blocks/0/Radio#0/dboard/r=
x_frontends/1/antenna/options</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1=
/sensors</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/connection</p><p>/bl=
ocks/0/Radio#0/dboard/rx_frontends/1/enabled</p><p>/blocks/0/Radio#0/dboard=
/rx_frontends/1/use_lo_offset</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1=
/bandwidth</p><p>/blocks/0/Radio#0/dboard/rx_frontends/1/bandwidth/value</p=
><p>/blocks/0/Radio#0/dboard/rx_frontends/1/bandwidth/range</p><p>/blocks/0=
/Radio#0/dboard/tx_frontends</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0<=
/p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/name</p><p>/blocks/0/Radio#0/=
dboard/tx_frontends/0/gains</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/f=
req</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/freq/value</p><p>/blocks/=
0/Radio#0/dboard/tx_frontends/0/freq/range</p><p>/blocks/0/Radio#0/dboard/t=
x_frontends/0/antenna</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/antenna=
/value</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/antenna/options</p><p>=
/blocks/0/Radio#0/dboard/tx_frontends/0/sensors</p><p>/blocks/0/Radio#0/dbo=
ard/tx_frontends/0/connection</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0=
/enabled</p><p>/blocks/0/Radio#0/dboard/tx_frontends/0/use_lo_offset</p><p>=
/blocks/0/Radio#0/dboard/tx_frontends/0/bandwidth</p><p>/blocks/0/Radio#0/d=
board/tx_frontends/0/bandwidth/value</p><p>/blocks/0/Radio#0/dboard/tx_fron=
tends/0/bandwidth/range</p><p>/blocks/0/Radio#0/frontends</p><p>/blocks/0/R=
adio#0/frontends/rx_fe_corrections</p><p>/blocks/0/Radio#0/frontends/rx_fe_=
corrections/0</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offs=
et</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/range</p=
><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/value</p><p>/=
blocks/0/Radio#0/frontends/rx_fe_corrections/0/dc_offset/enable</p><p>/bloc=
ks/0/Radio#0/frontends/rx_fe_corrections/0/iq_balance</p><p>/blocks/0/Radio=
#0/frontends/rx_fe_corrections/0/iq_balance/value</p><p>/blocks/0/Radio#0/f=
rontends/rx_fe_corrections/1</p><p>/blocks/0/Radio#0/frontends/rx_fe_correc=
tions/1/dc_offset</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_=
offset/range</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offse=
t/value</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/1/dc_offset/ena=
ble</p><p>/blocks/0/Radio#0/frontends/rx_fe_corrections/1/iq_balance</p><p>=
/blocks/0/Radio#0/frontends/rx_fe_corrections/1/iq_balance/value</p><p>/blo=
cks/0/Radio#0/frontends/tx_fe_corrections</p><p>/blocks/0/Radio#0/frontends=
/tx_fe_corrections/0</p><p>/blocks/0/Radio#0/frontends/tx_fe_corrections/0/=
dc_offset</p><p>/blocks/0/Radio#0/frontends/tx_fe_corrections/0/dc_offset/r=
ange</p><p>/blocks/0/Radio#0/frontends/tx_fe_corrections/0/dc_offset/value<=
/p><p>/blocks/0/Radio#0/frontends/tx_fe_corrections/0/iq_balance</p><p>/blo=
cks/0/Radio#0/frontends/tx_fe_corrections/0/iq_balance/value</p><p>/blocks/=
0/DUC#1</p><p>/blocks/0/DUC#1/noc_id</p><p>/blocks/0/DDC#1</p><p>/blocks/0/=
DDC#1/noc_id</p><p>/blocks/0/Radio#1</p><p>/blocks/0/Radio#1/noc_id</p><p>/=
blocks/0/Radio#1/tx_codec</p><p>/blocks/0/Radio#1/tx_codec/gains</p><p>/blo=
cks/0/Radio#1/tx_codec/name</p><p>/blocks/0/Radio#1/rx_codec</p><p>/blocks/=
0/Radio#1/rx_codec/name</p><p>/blocks/0/Radio#1/rx_codec/gains</p><p>/block=
s/0/Radio#1/rx_codec/gains/digital</p><p>/blocks/0/Radio#1/rx_codec/gains/d=
igital/range</p><p>/blocks/0/Radio#1/rx_codec/gains/digital/value</p><p>/bl=
ocks/0/Radio#1/dboard</p><p>/blocks/0/Radio#1/dboard/rx_eeprom</p><p>/block=
s/0/Radio#1/dboard/tx_eeprom</p><p>/blocks/0/Radio#1/dboard/gdb_eeprom</p><=
p>/blocks/0/Radio#1/dboard/iface</p><p>/blocks/0/Radio#1/dboard/rx_frontend=
s</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0</p><p>/blocks/0/Radio#1/dbo=
ard/rx_frontends/0/name</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/id</p=
><p>/blocks/0/Radio#1/dboard/rx_frontends/0/gains</p><p>/blocks/0/Radio#1/d=
board/rx_frontends/0/freq</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/fre=
q/value</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/freq/range</p><p>/blo=
cks/0/Radio#1/dboard/rx_frontends/0/antenna</p><p>/blocks/0/Radio#1/dboard/=
rx_frontends/0/antenna/value</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/=
antenna/options</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/sensors</p><p=
>/blocks/0/Radio#1/dboard/rx_frontends/0/connection</p><p>/blocks/0/Radio#1=
/dboard/rx_frontends/0/enabled</p><p>/blocks/0/Radio#1/dboard/rx_frontends/=
0/use_lo_offset</p><p>/blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth</p>=
<p>/blocks/0/Radio#1/dboard/rx_frontends/0/bandwidth/value</p><p>/blocks/0/=
Radio#1/dboard/rx_frontends/0/bandwidth/range</p><p>/blocks/0/Radio#1/dboar=
d/rx_frontends/1</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/name</p><p>/=
blocks/0/Radio#1/dboard/rx_frontends/1/id</p><p>/blocks/0/Radio#1/dboard/rx=
_frontends/1/gains</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/freq</p><p=
>/blocks/0/Radio#1/dboard/rx_frontends/1/freq/value</p><p>/blocks/0/Radio#1=
/dboard/rx_frontends/1/freq/range</p><p>/blocks/0/Radio#1/dboard/rx_fronten=
ds/1/antenna</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/antenna/value</p=
><p>/blocks/0/Radio#1/dboard/rx_frontends/1/antenna/options</p><p>/blocks/0=
/Radio#1/dboard/rx_frontends/1/sensors</p><p>/blocks/0/Radio#1/dboard/rx_fr=
ontends/1/connection</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/enabled<=
/p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/use_lo_offset</p><p>/blocks/0=
/Radio#1/dboard/rx_frontends/1/bandwidth</p><p>/blocks/0/Radio#1/dboard/rx_=
frontends/1/bandwidth/value</p><p>/blocks/0/Radio#1/dboard/rx_frontends/1/b=
andwidth/range</p><p>/blocks/0/Radio#1/dboard/tx_frontends</p><p>/blocks/0/=
Radio#1/dboard/tx_frontends/0</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0=
/name</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/gains</p><p>/blocks/0/R=
adio#1/dboard/tx_frontends/0/freq</p><p>/blocks/0/Radio#1/dboard/tx_fronten=
ds/0/freq/value</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/freq/range</p=
><p>/blocks/0/Radio#1/dboard/tx_frontends/0/antenna</p><p>/blocks/0/Radio#1=
/dboard/tx_frontends/0/antenna/value</p><p>/blocks/0/Radio#1/dboard/tx_fron=
tends/0/antenna/options</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/senso=
rs</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/connection</p><p>/blocks/0=
/Radio#1/dboard/tx_frontends/0/enabled</p><p>/blocks/0/Radio#1/dboard/tx_fr=
ontends/0/use_lo_offset</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/bandw=
idth</p><p>/blocks/0/Radio#1/dboard/tx_frontends/0/bandwidth/value</p><p>/b=
locks/0/Radio#1/dboard/tx_frontends/0/bandwidth/range</p><p>/blocks/0/Radio=
#1/frontends</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections</p><p>/blo=
cks/0/Radio#1/frontends/rx_fe_corrections/0</p><p>/blocks/0/Radio#1/fronten=
ds/rx_fe_corrections/0/dc_offset</p><p>/blocks/0/Radio#1/frontends/rx_fe_co=
rrections/0/dc_offset/range</p><p>/blocks/0/Radio#1/frontends/rx_fe_correct=
ions/0/dc_offset/value</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections/=
0/dc_offset/enable</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections/0/iq=
_balance</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections/0/iq_balance/v=
alue</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections/1</p><p>/blocks/0/=
Radio#1/frontends/rx_fe_corrections/1/dc_offset</p><p>/blocks/0/Radio#1/fro=
ntends/rx_fe_corrections/1/dc_offset/range</p><p>/blocks/0/Radio#1/frontend=
s/rx_fe_corrections/1/dc_offset/value</p><p>/blocks/0/Radio#1/frontends/rx_=
fe_corrections/1/dc_offset/enable</p><p>/blocks/0/Radio#1/frontends/rx_fe_c=
orrections/1/iq_balance</p><p>/blocks/0/Radio#1/frontends/rx_fe_corrections=
/1/iq_balance/value</p><p>/blocks/0/Radio#1/frontends/tx_fe_corrections</p>=
<p>/blocks/0/Radio#1/frontends/tx_fe_corrections/0</p><p>/blocks/0/Radio#1/=
frontends/tx_fe_corrections/0/dc_offset</p><p>/blocks/0/Radio#1/frontends/t=
x_fe_corrections/0/dc_offset/range</p><p>/blocks/0/Radio#1/frontends/tx_fe_=
corrections/0/dc_offset/value</p><p>/blocks/0/Radio#1/frontends/tx_fe_corre=
ctions/0/iq_balance</p><p>/blocks/0/Radio#1/frontends/tx_fe_corrections/0/i=
q_balance/value</p><p>/blocks/0/Replay#0</p><p>/blocks/0/Replay#0/noc_id</p=
><p><br></p><p>Thank you for any assistance!</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000055674905e5d9f8f6--

--===============7415686902309369077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7415686902309369077==--
