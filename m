Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6895730472E
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jan 2021 19:56:19 +0100 (CET)
Received: from [::1] (port=46878 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4TVa-0005hd-IE; Tue, 26 Jan 2021 13:56:10 -0500
Received: from newton.apeiron.net ([208.79.95.38]:54256)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <mainland@apeiron.net>)
 id 1l4TVW-0005e0-4S
 for USRP-users@lists.ettus.com; Tue, 26 Jan 2021 13:56:06 -0500
Received: from [10.246.149.9] (unknown [144.118.76.213])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: mainland)
 by newton.apeiron.net (Postfix) with ESMTPSA id B8AAE17C8C
 for <USRP-users@lists.ettus.com>; Tue, 26 Jan 2021 10:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=apeiron.net;
 s=newton; t=1611687313;
 bh=rR2tD2Z/T2CRa+803ir/y4vo2rZu2SYcTKCQnvoOKs8=;
 h=To:From:Subject:Date;
 b=aGhCYPHfWZr3ZJCQIyrBcBThb8F66MQsLUNS8HS146k0qokvzbxuv4ImpO/LEgbKm
 dZ3G6XqiRxuetA3fX6lDzJlCrQHNhPTmVEq/cyrohPXY8gIsHYnBVbTQfmx5CalXjL
 5BReT1rZXOh+Vr2oQYhzh5VnwrCpIoTqJMNoI3u4=
To: USRP-users@lists.ettus.com
Autocrypt: addr=mainland@apeiron.net; prefer-encrypt=mutual; keydata=
 mQINBFVxv+QBEADA1wmc4CfCFEXmVsrSB4UnB2cvjJNVJlGxAW/FNqO6spx/yM/Z4OXKp/El
 h+FdMz8WFfAdsuGdyO7uXKS9jLEoZcZujeSv1TtwoXz8SXOMVgYkfsvnCWHN3xXRyfij6OVO
 paGiefKcw8U0oMtTAFw5OJXclz3+tSyf71bg4J0/SHOP4pRV4cp9yGJoQ83DJoYLuMZ1BOrt
 2mUtTKu02D/05GvRfb4o3T050XMqtT7CcmXLCDSHM8r0TLif4wcK9plYUH77hWv0y43LrBAy
 C4SemsiNG/I42oUqd5SFnGlwdpeiKU8+vH49p8DjhB+9S16Gz1OXzb451+swVMabjG2XW+XF
 WcOFddc6ZiISe90g37uZ2rXHIuF6jbPVBDtFRZM8fIKjaPNyweN9Yz5Uh4a7NSFJTjNkJpcz
 a32ZQFKAyesOazR51WRIMG/nSMxpz7xL1/URYArDWiquNafDBAgEUPeSdmnNtxZ729yMxuTQ
 CMHOLFcAbSw06C+owcG9P4w3u1F+Bl6zfa6BFPPEKYNPCmAanrnJ0fSE28xxn/cY5nx2KV1A
 Vj7d1rHLE9Hy7VSQXDq4IZGfXJeiH9TAnpdE51i1INM/a0wozvGEAKucX67RLxqS99tlHEK7
 X3x7QGU89IabMVxo6PZ6puBNL7rhrmwUoxOZvITgZb8DugkKtwARAQABtChHZW9mZnJleSBN
 YWlubGFuZCA8bWFpbmxhbmRAYXBlaXJvbi5uZXQ+iQJCBBMBAgAsAhsDBwsJCAcDAgEGFQgC
 CQoLBBYCAwECHgECF4ACGQEFAl14FCIFCQvIuzsACgkQNEpee9O9gzgHfBAAl1/P+5h8fDjm
 utNRvv1DAY0H1oPSSHMgNw1bG1Gx9kdVEJT73YP7cWQTIO6DY6cNmjA4Av4NsN0OYC1Dr7GU
 ULd0A55YHK/lgnCHsfl5mRrRR7efuhPktzSSwMHRjg5kZYooTt9S48wNrFjsvSnAwQqq7bYa
 tMUuoC+FdDxtYA8pkVzkfIhd1+6rAnVU4FSQ0sjySkbESP1GgCMADaPOeQDHcGBCgCZ7brTY
 goLjU2hWc8iiv+cbsF4CWx4IgIjTGVa2MtR6MjJXjLGBWpu9P1zBJMf2FWxcsIZv+cHyA+zR
 Ka23E9unVcVPbZZzMl+kJfKSg8cOnj+AogZeMfsBFpbTHE3RFC2DOG2FKMLBhhOTSQy5vqQm
 73sQl60hYxwPujA+QmyrVqpW2pLTwQMdRewcXIRRnrGJ8rsgg+G0+HtjSZRyMdcV5MwAGMS1
 8SPQ81OKw6xvyU152wcEQkL4QT3cV6/xatmq+rhejq38mxkgoCMw6BSQXWPf+6SNj4R1L7pR
 EfZjiz6Zp9pttU+Yw1q//p+NAv2831QIh83Kn+a1BDjd6T7CaoiaO7xnR6mNVHW0A26vgLYk
 A3h8wZ3kabn27t73IBB2T1DXKJHR+Dg+EHUvk9s0F5/0Roi6HOpUMfBKkAkoVrrU2sXV/f7G
 ylZZzn4u8Yu9/Bhk0LTRAuS5Ag0EVXHQIwEQAKzhOzx+tsHrDtdR0KqIhvhz19WY2qQE3lv/
 nd3uEaHaK9vbr6ziK9UQlTsCi/l3/rU4jdgggAFI2nmq0Iz4ZMVxOg1TvGePFdfzw9k221RV
 JcbsabSdKGtYai3BLxcqBizY6AX0d7kFbq/Jso7eHFSMMWtVOqj/gs4zdc5fr6ukRn76xc/H
 CISoocFvk19PRbSWQLNnYQyF2E2sjoFBjd5Rej+v1ac6trRySjqOnMa15/7P0U/LjugSeiVa
 Z9sZRF/wCjKytagmFqV8XUw5XzRTkRUO5lncezFyTw26bdjpv6Z6aQtWU7GPzmnrEqASzX7J
 ZUhgVAP7gkP87suE19tkeIwsXMd5rGXYEpDt/WHlAdnsgJvBZWWbuj2BWqEmdXw7ecMIFySz
 c87YO8B5K8r1BTMOmPYBpai2N+asitdqa7y3LnBnNgVHRKftpxr/K2Sw1LkPU8SCGlXLp+XD
 +TobLTgvXYROeyr0Wj2xdpTBugiav7VuLoLrf66sNBna8Kh6xlrLHxJMq0yrrfTfZLvjNmKC
 /GsZXOTmevgtXRhD7sirVtrDqDyo/DK1WTraMLJXuSKhabSnTGbkox96hOZBENk6OSAi/CEp
 KylGwXylNBnsNeiL1Ngh64XnCnmROoIKMNd21DmfkTUO/WNKkw77FOSgkLqhFHXKkfn91PV3
 ABEBAAGJBEQEGAECAA8CGwIFAl14FDYFCQvIqxACKcFdIAQZAQIABgUCVXHQIwAKCRCtUZq3
 3qiMjRrND/4y2ahjh0mUA2nZro9572/IMDhKis33Aw0ac6No4bdLhKKwu4VpeAkvg1Wkd6AE
 AvlGS/cpJ8WEllyzIRb8DJzZmLMyOehcW4Js+g6EMdn6gtotMw4mYqL9kfzKDAZ3eJQaY2zI
 tRZ+RBBWgbwswPLxNIOcYS/CXLijfMj9HUqThFa5DQZT+0viVXPD30P0dI1UnoUKiVzID5tC
 avk1EW50RzF08KTXbSV19ua1r5wUJaQkmPXHOT1NaoyUZumFy1oVQd4vbDNwPxFLdaZ1EL8j
 m4YH0vJDvEHws1v8ZMcdhSZMosXWsakJfD0GqB0e2ILTEHXTFZgwLTYUrHIC76+6X0Oc4PAu
 2YYNMUNn78FFXxdV7X8YOFzZQZze1+Rnz1IWGdwrm36N+bKsEE1mMIJ5Ur0Ox51PokFImpwR
 COkm/JM9v+psU183111CtZv9A0sbSz+6JokddHA1mrDhrWkZJEE4/c+Lg8x01eNl9DZ57Xh2
 AIMEIjhVvfI8l0IUKt9nedh5DdRHcqY/qvBRjTjAzo/aXyyPazKRTQPOna/X8E/43SURfF14
 GFp5eBTYs3yDDbw0XJN9/Q+n4dw1eGGnBg71Oy1zeW1v2pPs1LJu7/bTvFe16rOWsYfgvpXC
 2+9gR1jXMYNl7bh9LS4qexQ8ynuL40Q5CjmcaruE6StDTAkQNEpee9O9gzh92BAAg9M8Tirs
 W+JIVp7tizDf33RorMeK8buQndcRTQtnwPqJrF7vea2SC2dgk8XULkC1R+2HdBcWDMJvr0nQ
 Ys20PUl2ZPP+Y9I8a5J/n4uv/a9+sE90loafZ3LlEJ0igm995ft+9wWxs/j2YLBc4vummBom
 lYwduqLNnYb5AkhdIULonLvKVhNfKyBG8idciSTSPZwnbA7fmO6ZL2Yjf7gCDS4eaYf9Jw99
 bCwI5lKpNSPOljW3rn0PPIflQLJlfXSNZ3nj9lzsUeceVOKlleKyv66IHepzDzLaAL8GFjNU
 1lOjW5913zSD6x/oO9bnsIYdH91ZHbiHSk0edTg52JwMLQ4XYZRQtRf3lcQMg5Xmpkb8fknD
 Kwmi4uzuLUaXsp+qxd8XSwaUTxkD6oxnioLRJrf28jx1sca2N9OALt8VRDlwCfIXNykvxoGA
 8nDAtgMzDY5u9Fh3VQnpTobWPFhA5t/mLoOR81BHAVHuc1QBC9M8Tw0L1YCiQnzKkE1VwwRb
 GOU0oWQvkTPPprBy6jAsb5Ilk1x5ZSai/3uXGRM6sKdq98wqeHGwfXLud1/D0rc9iUnJWjb4
 MJG7KK/8uhdDHC95heUv4cY4VUHuSxzhs0jZ+3ZPqsUQ/V2VigVlNer4wjDCP6t6fvKjivXh
 ayX8CFqn8k+nNgd2r0/L5+yOhJi5Ag0EVXHW7wEQALaDjs2JovL/1KWwMR4lqGaUBkTMilIF
 dvGrRcNS9HyiixNZA0PpmVizYoqebwmBpEVbQDNzx7Lo7HIPmiBYPBbIVLTU+LPcgtbynL/h
 ewqEF/EMNp2uZGwQMb9pVQlVqARSBz3UMpI+1BFhTdTo3hIXdf/mWC1k4huHdvFefTF4xfp1
 Hf1sIe3fv6zdhW+9PJKRsSd2xDh56KZp+3Dz6yWRNjbtCaK97VR47uBUzeB2ycGy+jqroCCr
 7DRo/+TsKpX8PRBa5ig3U9KokptX7Ol1bL8T7heLg95S3kiJnp/EHQsyX34vhNParbTBEToj
 8M/s5X8q5v7szwLT9GFaEpaZfqMhuBgEDA71s5NzAFPGcWO8lFefgm+unh/iZn2sraTZNBjn
 FoETQyp9XAKEFry9A2bKAN0cDtXRHA6Oe/7yEUg6uZFfCboDNHRRNLgUQgkoC5Lxg8ri92yu
 svsaFcVwuO5exo6KCSdSzcoEP6ljFREmdmZnklrx5RLhUj2DwrhPAwvJEmZrmmAOrZ3LhwY4
 ka8od22NJKi5FHEZDSkdeWiShyyVXW1ZsEXy4/Ha37+zLrBpGzdJEH1zPngrrQ6ZU/EqF/oG
 Olw4sOm8lszqt4RqK9hoa8wXAWG8WvgPM5gyKr3blThglkv08S/awNcq8nQxkGplVlTnXOPf
 OHIfABEBAAGJAiUEGAECAA8CGwwFAl14FFgFCQvIpGYACgkQNEpee9O9gzi6wg/9Hyo4kWnm
 PvyHBUQmp56z5VQKpUN37995YLdki3dqtkXju2sOIHD+HD73AGviXEVT1OmmkfnOJG82kyyb
 yDors5zXw0MzEhug06nNRFxzpb0CyBZ6CuqC8RtBfSpHkVwNm01aEC3dZD+fz7DTA5qW7H93
 uiEtd+QKn6+02lwtifQPpWjMA/SgrcYt3PP+F/0+27xcGdc0YvkspgcS9Phnq296GiYMbRoi
 2bzngQUzQYtE3+vl+wqeBYFj4zzHKvVSrmIua49ingq+NxP74ZrXHQU5YK4Cv7YuIlkEgpcb
 ujUuy66695HP0VF2mmBvVNvbI3JSB4TXCHnl6tNSJMk5x7At9zUSN3J3YSFxAQ3PLKb/rYlR
 2lnO05P5hcupBGohUDupmzwBg32fadRh2BKCzmluRd/F+w6i2VGzCM5CzpaWbxrSh41bvY4V
 RC1YJLRvs/sKGhMOicVAwo54gf1P/OQVP48UuLbovE35/3thRKFLRwl52XsswOoFOv+Z1AJN
 89hYuxzTWAjrzKDZeyWgpHK0WEsry20Zyq1ZpZJrQibe9Zub3+wK2xjZXbyhIN1Z3eoBuOsS
 NMVkRAw9p6vcA9ZLR8evNxBJezFr+DMIAWP5F5+T/kxZ8Ebd+z2GZIRlKj+0lGlQoV+WXt8B
 24/d4p4JiCGRbyJuVyi1YyHb1Bw=
Message-ID: <becd5987-82b5-51c6-0f7d-539ec8d104d4@apeiron.net>
Date: Tue, 26 Jan 2021 13:54:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] Burst transmissions consistently lead to hard lock up
 on X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Geoffrey Mainland via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Geoffrey Mainland <mainland@apeiron.net>
Content-Type: multipart/mixed; boundary="===============1732762475524520961=="
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

This is a multi-part message in MIME format.
--===============1732762475524520961==
Content-Type: multipart/alternative;
 boundary="------------DFB6F59782A4D234E79F7FAF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DFB6F59782A4D234E79F7FAF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

I’m encountering a consistently reproducible problem on the X310
platform that causes the radio to lock up to the point where I have to
power cycle it or flash it over JTAG to return it to a working state.

My application is DragonRadio
<https://github.com/drexelwireless/dragonradio>, Drexel’s DARPA SC2
competition radio. This radio can use either a TDMA MAC, which uses
timed TX bursts with a time spec, or an FDMA MAC, which uses TX bursts
without a time spec (|has_time_spec| is false). The problem occurs in
both cases, so it doesn’t seem to be related to the use of timed bursts.

After several minutes of data transfer, one of the X310 radios will
produce the following error and lock up:

EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long unsigned int]
  at /root/dragonradio/dependencies/uhd/host/lib/rfnoc/ctrl_iface.cpp:151

At this point, I have to power cycle the radio or flash it over JTAG to
use it again.

I am currently using UHD 3.15, but I have tried every UHD release since
3.9 (except 3.12), and the same problem occurs. UHD 4 fails too, but the
error is slightly different:

[ERROR] [X300] 192.168.40.2: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw peek32 - reply timed out
terminate called after throwing an instance of 'uhd::assertion_error'
  what():  AssertionError: reply.sequence == request.sequence
  in virtual uint32_t x300_ctrl_iface_enet::__peek32(uhd::wb_iface::wb_addr_type)
  at /root/dragonradio/dependencies/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165

The problem *does not* occur with UHD 3.9.

Both MACs only end a burst when they run out of data to send
continuously, and keeping them fed prevents the hang.

My problem seems to be the same that is described in the closed GitHub
UHD issue 203 <https://github.com/EttusResearch/uhd/issues/203>. As
Brian Padalino suggests in that issue, resizing the DRAM FIFO so latency
is reasonable and then zero stuffing the TX pipeline also prevents the
radio from locking up. I have not tried |skip_dram=1|. I also haven’t
figured out how to resize the DRAM FIFO with UHD 4, so I don’t know if
the work-around applies to that version.

This problem is 100% reproducible with a few minutes (1–20) of run time.
Constructing a minimal failing example would be a lot of work, but the
radio I’m using is open source, so anyone should be able to reproduce
the problem (I’d be happy to provide additional instructions for doing so).

Has anyone else seen this kind of behavior? There definitely seems to be
a bug in the DRAM FIFO.

Thanks,
Geoff


--------------DFB6F59782A4D234E79F7FAF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p>I’m encountering a consistently reproducible problem on the
        X310 platform that causes the radio to lock up to the point
        where I have to power cycle it or flash it over JTAG to return
        it to a working state.</p>
      <p>My application is <a
          href="https://github.com/drexelwireless/dragonradio">DragonRadio</a>,
        Drexel’s DARPA SC2 competition radio. This radio can use either
        a TDMA MAC, which uses timed TX bursts with a time spec, or an
        FDMA MAC, which uses TX bursts without a time spec (<code>has_time_spec</code>
        is false). The problem occurs in both cases, so it doesn’t seem
        to be related to the use of timed bursts.</p>
      <p>After several minutes of data transfer, one of the X310 radios
        will produce the following error and lock up:</p>
      <pre>EnvironmentError: IOError: Block ctrl (CE_01_Port_40) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long unsigned int]
  at /root/dragonradio/dependencies/uhd/host/lib/rfnoc/ctrl_iface.cpp:151</pre>
      <p>At this point, I have to power cycle the radio or flash it over
        JTAG to use it again.</p>
      <p>I am currently using UHD 3.15, but I have tried every UHD
        release since 3.9 (except 3.12), and the same problem occurs.
        UHD 4 fails too, but the error is slightly different:</p>
      <pre>[ERROR] [X300] 192.168.40.2: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw peek32 - reply timed out
terminate called after throwing an instance of 'uhd::assertion_error'
  what():  AssertionError: reply.sequence == request.sequence
  in virtual uint32_t x300_ctrl_iface_enet::__peek32(uhd::wb_iface::wb_addr_type)
  at /root/dragonradio/dependencies/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165</pre>
      <p>The problem <strong>does not</strong> occur with UHD 3.9.</p>
      <p>Both MACs only end a burst when they run out of data to send
        continuously, and keeping them fed prevents the hang.</p>
      <p>My problem seems to be the same that is described in the closed
        GitHub UHD <a
          href="https://github.com/EttusResearch/uhd/issues/203">issue
          203</a>. As Brian Padalino suggests in that issue, resizing
        the DRAM FIFO so latency is reasonable and then zero stuffing
        the TX pipeline also prevents the radio from locking up. I have
        not tried <code>skip_dram=1</code>. I also haven’t figured out
        how to resize the DRAM FIFO with UHD 4, so I don’t know if the
        work-around applies to that version.</p>
      <p>This problem is 100% reproducible with a few minutes (1–20) of
        run time. Constructing a minimal failing example would be a lot
        of work, but the radio I’m using is open source, so anyone
        should be able to reproduce the problem (I’d be happy to provide
        additional instructions for doing so).</p>
      <p>Has anyone else seen this kind of behavior? There definitely
        seems to be a bug in the DRAM FIFO.</p>
      <p>Thanks,<br>
        Geoff</p>
    </div>
  </body>
</html>

--------------DFB6F59782A4D234E79F7FAF--


--===============1732762475524520961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1732762475524520961==--

