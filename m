Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23927596F9
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 11:11:45 +0200 (CEST)
Received: from [::1] (port=48352 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgmuu-0005f4-PL; Fri, 28 Jun 2019 05:11:36 -0400
Received: from www.itsystems.it ([62.94.30.103]:41180 helo=mx1.itsystems.it)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1hgmup-0005VM-F8
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 05:11:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kmMN/IhLifIflsfxfMPJ+dHeGQWWZC+H8Twx0pOuDm0=; b=E9hh5Kmna7htaVvYhypTDCN4pM
 ZeO1DY3r/5TIcOAfJSWxwA4uuZ4NPXMe5NUiJPaJgyIOybseiqd65Px2J7lf89qfAHPUnGP+uW5rP
 mHGKd+Jx1HXubu8OQ6TBMeKxhewqdjp67ZsmRH2TkLNoTYJycBsiGH8syy5gHkF/gF1M=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1hgmtQ-000329-0x
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 09:10:06 +0000
To: usrp-users@lists.ettus.com
References: <CABO=5Rr_+Z16RqPV6cHt9n3KmhyUf1vgwL55ST4bHpW+nFQL6Q@mail.gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=p.palana@itsystems.it; prefer-encrypt=mutual; keydata=
 xsFNBFxTGdwBEACsDaIWW8UcFLKz9O+2/QzsPNJnID7S982Xxzya9Z9U+ScP1lCu4z7Dtz6G
 xku2HqdxqHa7VvFzHSY1yrvS6g9rM+DutecEjM2v3U/nSSBaExhbP09NPAYrzbJ+qmzFlwSJ
 GXffqoh6Mc3JX+GbVe5Sw5O0rYqxMUxP82Vq/dUyL6ZsoRKPGRJDr+5dznC5WA2+78l8vqGg
 Ns8ZB/WsGiz43BmikwY9WjsvsRQJ/XI5lnsYjyD+wPoum+pUgE1rzhzxjWDdX7wbDn+yJewI
 9FfQ03F98zE//VovDBGN/eX/5oTefIoEMKHJTmdUTYmu1o+8JeBQzsLKyfq615++z1HuzKDr
 3t2YYPFmGfMBLTtbDwT3Dd+XxYaOZa1MHrSnA3n8+xzrvbLj2BJItww5sHD2VwcCL14leEHh
 /2UMyTRW3jT2tHsrnTReQRPLSi1dHTkabb4LYWl3UQuPZR0xdyZFtjltabzN4SCqiNeUcO2a
 4C34uIfwZZDWQ4xFEXiNvgEkk6V1d09ZKkyOYoH/O8ug22oGumYa1dah145Ee3kszFku3L4M
 ubWFNO7BZeXCxME4Y0zON54L7RMfB2IUR3EZCFsrPviBsH+hl/PTU5eAojEpwwprQ5P8knQC
 SlIkdD5IyKBwi3/GgeUyzUhXfN0hzJZjGTjhDCZG00D+nZidZQARAQABzSRQYW9sbyBQYWxh
 bmEgPHAucGFsYW5hQGl0c3lzdGVtcy5pdD7CwX0EEwEIACcFAlxTGdwCGyMFCQDtTgAFCwkI
 BwIGFQgJCgsCBBYCAwECHgECF4AACgkQb3LZJUSQbRwQUA/7B2vsZDpD2OyiqzDIEZtRA3+R
 AyoA/emBK46dPQ066ILOC7oV9SjsMhr4er8khR8oZbVKximewETvUlYE4v0hBw6Z1PAYvFgB
 INqt/bAYJwYcEkc9oXSuLWY9QKTVBeggUo/HWzYaUkX3GHafyVgZCOFUAaJinzClYvnkylFp
 fqCvj0dLjRQBwNSIEVUsqZjNTQdLjAAPPnGGjt0mpz4ZDzroJF8/XHtHo0ZQc5d8H+Lr5bg7
 ovyfoPLfT4EMoVnIJ5rKVX8ziNsb8G1RkAdjzRHp8k0nulcpRmeEUHBrnPetzk41knhA7z3N
 98r5pU8sgaUckB9b0Lk+JbHUeKMwDHZC5sv/U6TPD1bklMexC4HTZyslpusPrIf91OjumAZ8
 JimlEYqXL/fisvF1IXEUDP5TQdZU9AKmZcPrWl928js+KFNqdjRlgoM7TVDzrrR4GpRlghRT
 OrD5u/OaMLiAZLTqK9laMFutEGP0rOJF3REDPDN/ZajX/wVf0VHaRcTXT5ZJCmQdCYoWrh3s
 Srkna+JSaaX6WJWGRLmwFZoF+Pc6v6NaaM0gp6GG5CTdDDZ7ODCG45Nv70eqLzxnu12+j+83
 YrZAKty4EwPHJScK3Z/fOFnVJOLzullfAJwbM7U/RSonKD7R4OmEO6ITeweIXQyR8VoQwhJ9
 WTotaAs6ffjOwU0EXFMZ3AEQAK3zIk+S4g92PjEBZ8+B3HPsV8DJ4LDQ1N/q/LnWX8Smq+ly
 XPRbH7u2FGTdgfPttgjj0Yobs/fBPYgMLBLDfF9Ik7GQIHrfcPl1fZEEqUFmCUWTUSQpOJNq
 KDaA5V1OImF1RTsMEqVAqSByY3EakPfJthlO4bYTw3OnGDAw4Hormj5QZBVVX8vGPgOOXBOd
 IKMl5DfpoGIhS8Trkq4WuXH5MArms2HbHUJZh87s2XeXNimINHvz65ggQJZ+8i8I65dgf8Sf
 ob9JwkisdMMxJ5+i+nEY1zB07Kagxgbsv+BOVaek893hVE+DCwNjgW+XMVI5MsWRDpeZDpYx
 NjlqayjBF9K8+WgQ7ronRGiLwamumQAZ0+gDoBLU9imjFX/SOG3MM2Grl4epJ1le1AbPm+IM
 F2otD5k/fGxpmaDzhNpbPIbER+hlTTUrwlhRCCcxQLv7Fc4tpzkoSxpZKmxCl6JtZhUPCKcz
 XvEdSWvD09ZT6Yi7RgFPepo9NhA9KCH80jekZkz9KBjieXf+HfTHbXioqTPQ+nPJuOeJx2w7
 OtKKLODYJdqDhzeu4NCUBPLuZiQUK9jLHxTVIQht1+IysOuSM40oq/fRVXb7J89HR97v2g6Q
 59Bz2OAm5cVr5JbYHEPQGiIspJmSAoW0I+nVNp+iReu2+TAd3GS4AWKOjJcZABEBAAHCwWUE
 GAEIAA8FAlxTGdwCGwwFCQDtTgAACgkQb3LZJUSQbRzjtRAAidb7tU0xlAT9xRQJIEBdoHE0
 0f1tqL4bdM1SepGFBYHyUhDLL+LsS4X7RT51cC+RK0lw8MOqYuMuRIzQO9Oi4NLHvZLQBUHx
 i3cvhhfRhiMBizDbLLn4Jz0RdOvOWG/yrPynnEKQBBHyOyBXpl157OdfmxTz9Vw1DVqhwJi6
 edYbrpYsJ1EtrqzdQsL0q6Qyzis62mjgbIvKCeyxJGfevIDdjx9D8vVPWuMhZ4yP6+ArU8md
 iOTQ7yK5CKwB0DlKk948SQkY2mKftgM6kJYuIp0U24vhjDkFWcRRUij5/PUYAj6oIYNPslyb
 +isKtoOACMcgEVTSrCi/x67+UMzEV/5rVWy5wH76irkKMNvjuDtoVZhCpiXsBKqkhh57C4JF
 w/mb8v/C8BJNCiG/VqFhqzWsdjmnfHu7N4e8Y/ubhEPAEre6gFy1ZgRicA2wq5b9Dzd755h2
 avlZKS3ZPcogl/xNNTwhSBFG8o1hLArf44xZpExVQ+ayCDnGzGD8itxkPndm2cYvtnmb5sRH
 4IwnPDkFDuih9AylU5UEH1opEflXquUG5IJw1dxLo9GfLu33t26hI3Auh6HXznZJo3flJva5
 nmKksBcxdpbiSzWOe4/XF763sPJHensl1KhO7LMvIel7Y3kvgOaP6QhpiB1wyC2rE2+IogWX
 YdrDHPAoRmQ=
Message-ID: <a8f26e81-6e54-07f2-0f0b-eb711432f8e4@itsystems.it>
Date: Fri, 28 Jun 2019 11:10:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CABO=5Rr_+Z16RqPV6cHt9n3KmhyUf1vgwL55ST4bHpW+nFQL6Q@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, I've the same problem with libuhd 3.14. I've not a
 solution yet, but I'm trying ti figure out the problem and I want to share
 my observations related with this issue. In my case the problem appears only
 when I use my custom noc_block (2 inputs - 2 outputs) and only when I'm going
 to stop the streaming form the device. 
 Content analysis details:   (-1.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0001]
 1.2 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [USRP-users] Regarding USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
Content-Type: multipart/mixed; boundary="===============9044364985809718608=="
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
--===============9044364985809718608==
Content-Type: multipart/alternative;
 boundary="------------B07F2D04A23AF015A0EE2785"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B07F2D04A23AF015A0EE2785
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,
I've the same problem with libuhd 3.14.
I've not a solution yet, but I'm trying ti figure out the problem and I
want to share my observations related with this issue.

In my case the problem appears only when I use my custom noc_block (2
inputs - 2 outputs) and only when I'm going to stop the streaming form
the device.

Line 52 of ctrl_iface.cpp is the destructor ctrl_iface_impl the try to
send a packet to the zpu (I'm not really shure about that). So, for some
reason, I think,
the zpu became unresponsive. Because if I convert my noc_block in a pass
through the problem seems to disappear I thought it could
be realted with my logic inside the noc_block itself (may be a logical
bug just hang the communication bus or something like that).

Using ILA I've traced back what happen when my program start and stop
the samples streaming. As far as I can see the commands are received
from the noc_block_radio, but, from my noc_block I can see that ont
valid coming from the noc_shell remains high.

In the next days I will perform a regression test with libuhd 10.3.

If more information are necessary please let me know.

Any help is welcome.

Regards

Paolo


On 28/06/19 10:43, Saimanoj Katta via USRP-users wrote:
> Hi all,
>
> I have been using USRP X310 for almost more than a month. I had no
> problems until two days ago. USRP detects only when it is powered on.
> It gives various errors when I tried to execute it with srsLTE or OAI
> codes. */Each time, I have to use it, I tend to restart it. I am
> concerned about this erratic behaviour./* uhd_find_devices and
> uhd_images_downloader works fine. *When I restart the USRP, these
> errors vanish apparently. *
>
> Sometimes, with uhd_usrp_probe, this is occured.
>
> ubuntu@ubuntu-Zephyrus-GX501GI:~$ sudo uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.git-1-gf83faf28
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> uhd::endianness_t _endianness =3D (uhd::endianness_t)0]
> =C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block
> ctrl (CE_00_Port_30) no response packet - AssertionError: bool(buff)
> =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, dou=
ble)
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D
> long unsigned int]
> =C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no
> response packet - AssertionError: bool(buff)
> =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, dou=
ble)
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D
> long unsigned int]
> =C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> *Any suggestions would be appreciated. *
> *
> *
> *The errors are described as follows below*. This is either of the
> following reasons: Exception caught in safe call, Failed to find
> device auto with args auto, An unexpected exception was caught in a
> task loop.
>
> 1) [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
> uhd::endianness_t _endianness =3D (uhd::endianness_t)0]
> =C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block
> ctrl (CE_01_Port_40) no response packet - AssertionError: bool(buff)
> =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, dou=
ble)
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D
> long unsigned int]
> =C2=A0 at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>
> Error opening UHD: code 30
> /home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_imp.c.126: No
> compatible RF frontend found
>
> /home/ubuntu/srsLTE-issuefix_format1c/lib/src/radio/radio.cc.38: Error
> opening RF device
>
> Failed to find device auto with args auto
>
> 2) Failed to Attach
> /home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_uhd_imp.c.839:
> Error timed out while receiving samples from UHD.
>
> /home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/ue/ue_sync.c.727:
> Error receiving samples
>
> /home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_uhd_imp.c.839:
> Error timed out while receiving samples from UHD.
>
> /home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/ue/ue_sync.c.727:
> Error receiving samples
>
> ^CStopping srsUE... Press Ctrl+C 9 more times to force stop
>
> 3) [ERROR] [X300] 192.168.50.2 <http://192.168.50.2>: x300 fw
> communication failure #1
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.50.2 <http://192.168.50.2>: x300 fw
> communication failure #2
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [X300] 192.168.50.2 <http://192.168.50.2>: x300 fw
> communication failure #3
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The
> task loop will now exit, things may not work.EnvironmentError:
> IOError: 192.168.50.2 <http://192.168.50.2>: x300 fw communication
> failure #3
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> ^Z
>
>
> Regards,
> Saimanoj
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



--------------B07F2D04A23AF015A0EE2785
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Hi all,</div>
    <div class="moz-cite-prefix">I've the same problem with libuhd 3.14.</div>
    <div class="moz-cite-prefix">I've not a solution yet, but I'm trying
      ti figure out the problem and I want to share my observations
      related with this issue.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">In my case the problem appears only
      when I use my custom noc_block (2 inputs - 2 outputs) and only
      when I'm going to stop the streaming form the device.<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Line 52 of ctrl_iface.cpp is the
      destructor ctrl_iface_impl the try to send a packet to the zpu
      (I'm not really shure about that). So, for some reason, I think,</div>
    <div class="moz-cite-prefix">the zpu became unresponsive. Because if
      I convert my noc_block in a pass through the problem seems to
      disappear I <span class="tlid-translation translation" lang="en"><span
          title="" class="">thought it could</span></span></div>
    <div class="moz-cite-prefix"><span class="tlid-translation
        translation" lang="en"><span title="" class="">be realted with
          my logic inside the noc_block itself (may be a logical bug
          just hang the communication bus or something like that).<br>
        </span></span></div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Using ILA I've traced back what happen
      when my program start and stop the samples streaming. As far as I
      can see the commands are received</div>
    <div class="moz-cite-prefix"> from the noc_block_radio, but, from my
      noc_block I can see that ont valid coming from the noc_shell
      remains high.<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">In the next days I will perform a
      regression test with libuhd 10.3.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">If more information are necessary
      please let me know.<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Any help is welcome.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Regards</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Paolo<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 28/06/19 10:43, Saimanoj Katta via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CABO=5Rr_+Z16RqPV6cHt9n3KmhyUf1vgwL55ST4bHpW+nFQL6Q@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi all, <br>
        </div>
        <div><br>
        </div>
        <div>I have been using USRP X310 for almost more than a month. I
          had no problems until two days ago. USRP detects only when it
          is powered on. It gives various errors when I tried to execute
          it with srsLTE or OAI codes. <b><i>Each time, I have to use
              it, I tend to restart it. I am concerned about this
              erratic behaviour.</i></b> uhd_find_devices and
          uhd_images_downloader works fine. <b>When I restart the USRP,
            these errors vanish apparently. </b></div>
        <div><br>
        </div>
        <div>Sometimes, with uhd_usrp_probe, this is occured. <br>
        </div>
        <div><br>
        </div>
        <div>ubuntu@ubuntu-Zephyrus-GX501GI:~$ sudo uhd_usrp_probe <br>
          [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
          UHD_3.15.0.git-1-gf83faf28<br>
          [INFO] [X300] X300 initialization sequence...<br>
          [INFO] [X300] Maximum frame size: 1472 bytes.<br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
          0.929a<br>
          [ERROR] [UHD] Exception caught in safe-call.<br>
            in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl()
          [with uhd::endianness_t _endianness = (uhd::endianness_t)0]<br>
            at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>
          this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError:
          IOError: Block ctrl (CE_00_Port_30) no response packet -
          AssertionError: bool(buff)<br>
            in uint64_t
          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
          [with uhd::endianness_t _endianness = (uhd::endianness_t)0;
          uint64_t = long unsigned int]<br>
            at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br>
          <br>
          Error: EnvironmentError: IOError: Block ctrl (CE_00_Port_30)
          no response packet - AssertionError: bool(buff)<br>
            in uint64_t
          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
          [with uhd::endianness_t _endianness = (uhd::endianness_t)0;
          uint64_t = long unsigned int]<br>
            at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br>
        </div>
        <div><br>
        </div>
        <div> <b>Any suggestions would be appreciated. </b><br>
        </div>
        <div><b><br>
          </b></div>
        <div><b>The errors are described as follows below</b>. This is
          either of the following reasons: Exception caught in safe
          call, Failed to find device auto with args auto, An unexpected
          exception was caught in a task loop. <br>
        </div>
        <div><br>
        </div>
        <div>1) [ERROR] [UHD] Exception caught in safe-call.<br>
            in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl()
          [with uhd::endianness_t _endianness = (uhd::endianness_t)0]<br>
            at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>
          this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError:
          IOError: Block ctrl (CE_01_Port_40) no response packet -
          AssertionError: bool(buff)<br>
            in uint64_t
          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
          [with uhd::endianness_t _endianness = (uhd::endianness_t)0;
          uint64_t = long unsigned int]<br>
            at /home/ubuntu/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br>
          <br>
          Error opening UHD: code 30<br>
/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_imp.c.126: No
          compatible RF frontend found<br>
          <br>
/home/ubuntu/srsLTE-issuefix_format1c/lib/src/radio/radio.cc.38: Error
          opening RF device<br>
          <br>
          Failed to find device auto with args auto</div>
        <div><br>
        </div>
        <div>2) Failed to Attach<br>
/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_uhd_imp.c.839:
          Error timed out while receiving samples from UHD.<br>
          <br>
/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/ue/ue_sync.c.727:
          Error receiving samples<br>
          <br>
/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/rf/rf_uhd_imp.c.839:
          Error timed out while receiving samples from UHD.<br>
          <br>
/home/ubuntu/srsLTE-issuefix_format1c/lib/src/phy/ue/ue_sync.c.727:
          Error receiving samples<br>
          <br>
          ^CStopping srsUE... Press Ctrl+C 9 more times to force stop</div>
        <div><br>
        </div>
        <div>3) [ERROR] [X300] <a href="http://192.168.50.2"
            moz-do-not-send="true">192.168.50.2</a>: x300 fw
          communication failure #1<br>
          EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
          [ERROR] [X300] <a href="http://192.168.50.2"
            moz-do-not-send="true">192.168.50.2</a>: x300 fw
          communication failure #2<br>
          EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
          [ERROR] [X300] <a href="http://192.168.50.2"
            moz-do-not-send="true">192.168.50.2</a>: x300 fw
          communication failure #3<br>
          EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
          [ERROR] [UHD] An unexpected exception was caught in a task
          loop.The task loop will now exit, things may not
          work.EnvironmentError: IOError: <a href="http://192.168.50.2"
            moz-do-not-send="true">192.168.50.2</a>: x300 fw
          communication failure #3<br>
          EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
          ^Z</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Regards, <br>
        </div>
        <div>Saimanoj<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------B07F2D04A23AF015A0EE2785--


--===============9044364985809718608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9044364985809718608==--

