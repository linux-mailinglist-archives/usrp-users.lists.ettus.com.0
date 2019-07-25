Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B09B75969
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jul 2019 23:18:05 +0200 (CEST)
Received: from [::1] (port=43550 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hql7i-00063e-Rz; Thu, 25 Jul 2019 17:18:02 -0400
Received: from mail-lf1-f50.google.com ([209.85.167.50]:41891)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1hql7e-0005wz-P8
 for usrp-users@lists.ettus.com; Thu, 25 Jul 2019 17:17:59 -0400
Received: by mail-lf1-f50.google.com with SMTP id 62so30692406lfa.8
 for <usrp-users@lists.ettus.com>; Thu, 25 Jul 2019 14:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fWxv3D3tTEAU4Z+OG7rVqpOhZpm5l2I8DtMoxGenWvE=;
 b=PxszMeFuc5c016U42+nMQLbq/EZJRKb+hBAGVLy9fO4zvOBlvUrqjTUcmCSKDEAhIg
 lsnbN7TlKSZCSUWAB5qzEDfCGpP2otfiY+rowGKC+l/rXOh5Y63FrYOYbMaA+vIU5OUW
 LjJzpJXXh12tE/WgTi5OJ17ayMSG/yF+1IPR+iXxEeplPbsTZ3XytHY9DnD+nRwAIdEq
 GDc/TC+1l6qYanqApfN4NDrKnmAthTIQxIAPEV7SUa9JaNRuD0h31utPQEn35BkBFV1M
 7k3zFLjlA0mSW1rbbdw9CDYhu3vfVi2oleLQgTMAapVGXfm4XTbgiO4AB12uRjusSSoW
 vlmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fWxv3D3tTEAU4Z+OG7rVqpOhZpm5l2I8DtMoxGenWvE=;
 b=OEciGXpGrcBZMzqKbVXqIrmPcHJyBju2dljT3O4Rn1zsCZ7EFEVYw6GRgOKLgiTR2j
 VJf2oyePMR7u1UmFstL8ddXSKMn+nHhSh9W0MRENRflfS/1NSdsKtp3qVbQph8giXPun
 6pJ2i9VtqYUKUIEljFjNM6SU1qQjznH3G5G8uiWIEq9q4KlKW5/s5tlfWa1/oapwJx5z
 QMlgDRUmjiRuhj1tSsfnCOCtRmE0kPwTKzoqlBxj1qGM+tn5kddgLxLwRJ1oD3taODtK
 FkQhg0Xs+rXWsMzBRbQ/1SfXU/MaDTwHk5PzGXyEpcaLazolJmqN38TSk1U8h02sNy+e
 7hag==
X-Gm-Message-State: APjAAAWR4/Cpu6hYSSOcNKAby3I2qs8afu/T1wxmJV4eKQfFVTKYG6aN
 CrLM24KF296m5cfUJTggFS96xxbumF+8Eu4X/gmwst8B
X-Google-Smtp-Source: APXvYqyinrqIQsvQc4zTlQy0H23iEeHR5i3rBmGoCJuvxTQUW6ZBbIas//hCitTMgG6/hBHf62Pp4DhcW0ZFz0sqq+8=
X-Received: by 2002:a19:f24e:: with SMTP id d14mr44066260lfk.184.1564089437289; 
 Thu, 25 Jul 2019 14:17:17 -0700 (PDT)
MIME-Version: 1.0
References: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970Zt=7PJEOS5a6GsCichToKx=jFOp3o2kGcZQv3zYt8Csg@mail.gmail.com>
 <HK0PR01MB28356667C6C50BC7C37C7153F3C70@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <06CA772E-8BE6-4BFF-880B-30B7F97492B9@gmail.com>
 <HK0PR01MB28358F40DF973B33B3EC4A1FF3C60@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <B93D0C94-7692-4C77-994D-27ADFD22DBB5@gmail.com>
 <CANf970bQb8vKkrJr8Kruc6YNf_y9VAfUZ6AUwjacZ0z6okH-3w@mail.gmail.com>
 <5D3A0B4E.6030907@gmail.com>
In-Reply-To: <5D3A0B4E.6030907@gmail.com>
Date: Thu, 25 Jul 2019 16:17:06 -0500
Message-ID: <CANf970ZTcEFYX1Y5BaDZ8-mwy_rpWe7C_SZ68ja+Gjz6-ihrPg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] 
	=?utf-8?b?562U5aSNOiAg562U5aSNOiBOMzEwICJCYWQgQ0hE?=
	=?utf-8?q?R_or_packet_fragment=22_Problem?=
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4716416355802330420=="
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

--===============4716416355802330420==
Content-Type: multipart/alternative; boundary="0000000000004e8e66058e87f3cf"

--0000000000004e8e66058e87f3cf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Found the offending commit and reported the issue. It also looks like
adding *recv_frame_size=3D1476* explicitly to the device arguments cleared
things up on my N310 running 3.14.1.0. Let me know if this does / doesn't
work for anyone.

Sam Reiter
SDR Support Engineer
Ettus Research


On Thu, Jul 25, 2019 at 3:04 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 07/25/2019 03:56 PM, Sam Reiter wrote:
>
> Follow up on this thread. I ran my N310 with a 1GbE link and was able to
> reproduce the "Bad CHDR or packet fragment issue". It seems specific to
> N3xx RX over a 1GbE link on 3.14.1.0. I didn't spend a ton of time trying
> to find a workaround on 3.14.1.0, but rolling back to 3.14.0.0 cleared th=
e
> issue for me.
>
> I'll spend some time finding the offending commit and see what I can't do
> to get a fix / workaround figured out for 3.14.1.0.
>
> Sam Reiter
> SDR Support Engineer
> Ettus Research
>
> Thanks, Sam.  When I go into the lab later, I can probably confirm this a=
s
> well, I haven't seen it before, but I think I'm runing 3.14.0.0
>
>
> On Tue, Jul 23, 2019 at 10:13 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Normally Intel controllers have better performance but even a RealTek
>> chip should have no problem at those data rates.
>>
>>
>>
>> Sent from my iPhone
>>
>> On Jul 23, 2019, at 10:01 PM, =E6=B1=A4 =E9=A3=9E <retina999@hotmail.com=
> wrote:
>>
>> Actually my pc=E2=80=99s Ethernet card chip is from Realtek.
>>
>> I=E2=80=99ve tried all possible MTU sizes of auto, 1000, 1500, 2000, and=
 up to
>> 9000. Always the same errors.
>>
>> Is it the inherent problem with the Realtek chip?
>>
>> If that, is there any workaround? eg. Changing the default Linux driver,
>>
>> or the last solution, ie. I have to try install a PCIE network card.
>> Which brand ethernet card is compatible, one from Intel?
>>
>>
>> ------------------------------
>> *=E5=8F=91=E4=BB=B6=E4=BA=BA:* Marcus D Leech <patchvonbraun@gmail.com>
>> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* Wednesday, July 24, 2019 7:34:13=
 AM
>> *=E6=94=B6=E4=BB=B6=E4=BA=BA:* =E6=B1=A4 =E9=A3=9E <retina999@hotmail.co=
m>
>> *=E6=8A=84=E9=80=81:* Sam Reiter <sam.reiter@ettus.com>; usrp-users@list=
s.ettus.com <
>> usrp-users@lists.ettus.com>
>> *=E4=B8=BB=E9=A2=98:* Re: [USRP-users] =E7=AD=94=E5=A4=8D: N310 "Bad CHD=
R or packet fragment" Problem
>>
>> Some Ethernet 1g controllers won=E2=80=99t actually do MTUs greater than=
 1500
>> despite ethnology telling them to. Some Realtek for example.
>>
>> If it=E2=80=99s just 1G try default MTU of 1500 and work your way up to =
see where
>> it fails.
>>
>> Sent from my iPhone
>>
>> On Jul 23, 2019, at 7:15 PM, =E6=B1=A4 =E9=A3=9E via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> It=E2=80=99s a  1g SFP0 link. I set MTU  to 8000 according to the Applic=
ation
>> Note.
>>
>>
>> ------------------------------
>> *=E5=8F=91 =E4=BB=B6=E4=BA=BA:* Sam Reiter <sam.reiter@ettus.com>
>> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* Wednesday, July 24, 2019 4:56:21=
 AM
>> *=E6=94=B6=E4=BB=B6=E4=BA=BA:* =E6=B1=A4 =E9=A3=9E <retina999@hotmail.co=
m>
>> *=E6=8A=84=E9=80=81:* usrp-users@lists.ettus.com <usrp-users@lists.ettus=
.com>
>> *=E4=B8=BB=E9=A2=98:* Re: [USRP-users] N310 "Bad CHDR or packet fragment=
" Problem
>>
>> If you're connected over a 10GbE link, make sure to set your host's MTU
>> appropriately. I set mine to 9000.
>>
>> Sam Reiter
>> SDR Support Engineer
>> Ettus Research
>>
>>
>> On Fri, Jul 19, 2019 at 2:21 AM =E6=B1=A4 =E9=A3=9E via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi, all,
>>>
>>> When benchmarking my N310, I keep getting such [RX FLOW CTRL] errors.
>>> What causes this and how to solve it?
>>>
>>> Thanks in advance!
>>>
>>> FT
>>>
>>>
>>> /usr/local/lib/uhd/examples/benchmark_rate  \
>>> >    --args "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,m=
aster_clock_rate=3D122.88e6" \
>>> >    --duration 60 \
>>> >    --channels "0" \
>>> >    --rx_rate 3.84e6 \
>>> >    --rx_subdev "A:0" \
>>> >    --tx_rate 3.84e6 \
>>> >    --tx_subdev "A:0"
>>> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEA=
D-0-gbfb9c1c7
>>> [00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=
=3D192.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...[INFO] [=
MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.1=
0.2,type=3Dn3xx,product=3Dn310,serial=3D3182B09,claimed=3DFalse,addr=3D192.=
168.10.2,master_clock_rate=3D122.88e6[INFO] [MPM.PeriphManager] init() call=
ed with device args `master_clock_rate=3D122.88e6,time_source=3Dinternal,cl=
ock_source=3Dinternal,mgmt_addr=3D192.168.10.2,product=3Dn310'.[INFO] [0/Re=
play_0] Initializing block control (NOC ID: 0x4E91A00000000004)[INFO] [0/Ra=
dio_0] Initializing block control (NOC ID: 0x12AD100000011312)[INFO] [0/Rad=
io_1] Initializing block control (NOC ID: 0x12AD100000011312)[INFO] [0/DDC_=
0] Initializing block control (NOC ID: 0xDDC0000000000000)[INFO] [0/DDC_1] =
Initializing block control (NOC ID: 0xDDC0000000000000)[INFO] [0/DUC_0] Ini=
tializing block control (NOC ID: 0xD0C0000000000002)[INFO] [0/DUC_1] Initia=
lizing block control (NOC ID: 0xD0C0000000000002)[INFO] [0/FIFO_0] Initiali=
zing block control (NOC ID: 0xF1F0000000000000)[INFO] [0/FIFO_1] Initializi=
ng block control (NOC ID: 0xF1F0000000000000)[INFO] [0/FIFO_2] Initializing=
 block control (NOC ID: 0xF1F0000000000000)[INFO] [0/FIFO_3] Initializing b=
lock control (NOC ID: 0xF1F0000000000000)
>>> Using Device: Single USRP:
>>>   Device: N300-Series Device
>>>   Mboard 0: ni-n3xx-3182B09
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: Magnesium
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: Magnesium
>>>
>>> [00:00:17.353184] Setting device timestamp to 0...
>>> [00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
>>> [00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
>>> [[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or=
 packet fragment
>>> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>>> ValueError: Bad CHDR or packet fragment
>>> 00:00:17.414180] Unexpected error on recv, continuing...
>>> [00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>> [00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
>>> [00:00:17.514317] Unexpected error on recv, continuing...[ERROR] [RX FL=
OW CTRL] Error unpacking packet: ValueError: Bad CHDR or packet fragment
>>> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>>> ValueError: Bad CHDR or packet fragment
>>> [00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
>>> [00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>> [00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
>>> [00:00:17.614377] Unexpected error on recv, continuing...
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>

--0000000000004e8e66058e87f3cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Found the offending commit and reported the issue. It=
 also looks like adding <b>recv_frame_size=3D1476</b> explicitly to the dev=
ice arguments cleared things up on my N310 running 3.14.1.0. Let me know if=
 this does / doesn&#39;t work for anyone.<br></div><div><br></div><div><div=
><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>SDR Support=
 Engineer</div><div>Ettus Research<br></div></div></div></div></div></div><=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Jul 25, 2019 at 3:04 PM Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_4583629004326719419moz-cite-prefix">On 07/25/2019=
 03:56 PM, Sam Reiter
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Follow up on this thread. I ran my N310 with a 1GbE link
          and was able to reproduce the &quot;Bad CHDR or packet fragment
          issue&quot;. It seems specific to N3xx RX over a 1GbE link on
          3.14.1.0. I didn&#39;t spend a ton of time trying to find a
          workaround on 3.14.1.0, but rolling back to 3.14.0.0 cleared
          the issue for me. <br>
        </div>
        <div><br>
        </div>
        <div>I&#39;ll spend some time finding the offending commit and see
          what I can&#39;t do to get a fix / workaround figured out for
          3.14.1.0.<br>
        </div>
        <div><br>
        </div>
        <div>
          <div>
            <div dir=3D"ltr" class=3D"gmail-m_4583629004326719419gmail_sign=
ature">
              <div dir=3D"ltr">
                <div>
                  <div dir=3D"ltr">Sam Reiter=C2=A0
                    <div>SDR Support Engineer</div>
                    <div>Ettus Research<br>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    Thanks, Sam.=C2=A0 When I go into the lab later, I can probably confirm
    this as well, I haven&#39;t seen it before, but I think I&#39;m runing
    3.14.0.0<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2019 at 10:13
          PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Normally Intel controllers have better
            performance but even a RealTek chip should have no problem
            at those data rates.=C2=A0
            <div><br>
            </div>
            <div><br>
              <br>
              <div id=3D"gmail-m_4583629004326719419gmail-m_-17827058822852=
78276AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div>
              <div dir=3D"ltr"><br>
                On Jul 23, 2019, at 10:01 PM, =E6=B1=A4 =E9=A3=9E &lt;<a hr=
ef=3D"mailto:retina999@hotmail.com" target=3D"_blank">retina999@hotmail.com=
</a>&gt;
                wrote:<br>
                <br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div class=3D"gmail-m_4583629004326719419gmail-m_-1782705=
882285278276WordSection1">
                    <p class=3D"MsoNormal"><span lang=3D"EN-US">Actually my
                        pc=E2=80=99s Ethernet card chip is from Realtek.
                      </span></p>
                    <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99v=
e tried
                        all possible MTU sizes of auto, 1000, 1500,
                        2000, and up to 9000. Always the same errors.
                      </span></p>
                    <p class=3D"MsoNormal"><span lang=3D"EN-US">Is it the
                        inherent problem with the Realtek chip?
                      </span></p>
                    <p class=3D"MsoNormal"><span lang=3D"EN-US">If that, is
                        there any workaround? eg. Changing the default
                        Linux driver,
                      </span></p>
                    <p class=3D"MsoNormal"><span lang=3D"EN-US">or the last
                        solution, ie. I have to try install a PCIE
                        network card. Which brand ethernet card is
                        compatible, one from Intel?</span></p>
                    <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</spa=
n></p>
                  </div>
                  <hr style=3D"display:inline-block;width:98%">
                  <div id=3D"gmail-m_4583629004326719419gmail-m_-1782705882=
285278276divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"=
Calibri, sans-serif" color=3D"#000000"><b>=E5=8F=91=E4=BB=B6=E4=BA=BA:</b>
                      Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
                      <b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:</b> Wednesda=
y, July 24, 2019 7:34:13 AM<br>
                      <b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> =E6=B1=A4 =E9=A3=
=9E &lt;<a href=3D"mailto:retina999@hotmail.com" target=3D"_blank">retina99=
9@hotmail.com</a>&gt;<br>
                      <b>=E6=8A=84=E9=80=81:</b> Sam Reiter &lt;<a href=3D"=
mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt;=
; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>
                      &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                      <b>=E4=B8=BB=E9=A2=98:</b> Re: [USRP-users] =E7=AD=94=
=E5=A4=8D: N310 &quot;Bad CHDR or
                      packet fragment&quot; Problem</font>
                    <div>=C2=A0</div>
                  </div>
                  <div>Some Ethernet 1g controllers won=E2=80=99t actually =
do
                    MTUs greater than 1500 despite ethnology telling
                    them to. Some Realtek for example.=C2=A0
                    <div><br>
                    </div>
                    <div>If it=E2=80=99s just 1G try default MTU of 1500 an=
d
                      work your way up to see where it fails.=C2=A0<br>
                      <br>
                      <div id=3D"gmail-m_4583629004326719419gmail-m_-178270=
5882285278276AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div>
                      <div dir=3D"ltr"><br>
                        On Jul 23, 2019, at 7:15 PM, =E6=B1=A4 =E9=A3=9E vi=
a USRP-users
                        &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                        wrote:<br>
                        <br>
                      </div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">
                          <div class=3D"gmail-m_4583629004326719419gmail-m_=
-1782705882285278276WordSection1">
                            <p class=3D"MsoNormal"><span lang=3D"EN-US">It<=
/span>=E2=80=99<span lang=3D"EN-US">s a=C2=A0 1g SFP0 link. I set
                                MTU=C2=A0 to 8000 according to the
                                Application Note.
                              </span></p>
                            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0</span></p>
                          </div>
                          <hr style=3D"display:inline-block;width:98%">
                          <div id=3D"gmail-m_4583629004326719419gmail-m_-17=
82705882285278276divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" =
face=3D"Calibri, sans-serif" color=3D"#000000"><b>=E5=8F=91
                                =E4=BB=B6=E4=BA=BA:</b> Sam Reiter &lt;<a h=
ref=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com<=
/a>&gt;<br>
                              <b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:</b> =
Wednesday, July 24, 2019
                              4:56:21 AM<br>
                              <b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> =E6=B1=A4=
 =E9=A3=9E &lt;<a href=3D"mailto:retina999@hotmail.com" target=3D"_blank">r=
etina999@hotmail.com</a>&gt;<br>
                              <b>=E6=8A=84=E9=80=81:</b> <a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>
                              &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                              <b>=E4=B8=BB=E9=A2=98:</b> Re: [USRP-users] N=
310 &quot;Bad CHDR
                              or packet fragment&quot; Problem</font>
                            <div>=C2=A0</div>
                          </div>
                          <div>
                            <div dir=3D"ltr">If you&#39;re connected over a
                              10GbE link, make sure to set your host&#39;s
                              MTU appropriately. I set mine to 9000.
                              <div><br clear=3D"all">
                                <div>
                                  <div dir=3D"ltr" class=3D"gmail-m_4583629=
004326719419gmail-m_-1782705882285278276gmail_signature">
                                    <div dir=3D"ltr">
                                      <div>
                                        <div dir=3D"ltr">Sam Reiter=C2=A0
                                          <div>SDR Support Engineer</div>
                                          <div>Ettus Research<br>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <br>
                              </div>
                            </div>
                            <br>
                            <div class=3D"gmail_quote">
                              <div dir=3D"ltr" class=3D"gmail_attr">On Fri,
                                Jul 19, 2019 at 2:21 AM =E6=B1=A4 =E9=A3=9E=
 via
                                USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
                                <div bgcolor=3D"#FFFFFF">
                                  <pre>Hi, all,

When benchmarking my N310, I keep getting such <font color=3D"#CC0000">[RX =
FLOW CTRL]</font> errors.=20
What causes this and how to solve it?

Thanks in advance!

FT


/usr/local/lib/uhd/examples/benchmark_rate  \
&gt;    --args &quot;type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10=
.2,master_clock_rate=3D122.88e6&quot; \
&gt;    --duration 60 \
&gt;    --channels &quot;0&quot; \
&gt;    --rx_rate 3.84e6 \
&gt;    --rx_subdev &quot;A:0&quot; \
&gt;    --tx_rate 3.84e6 \
&gt;    --tx_subdev &quot;A:0&quot;

<font color=3D"#4E9A06">[INFO] [UHD] </font>linux; GNU C++ version 7.4.0; B=
oost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7
[00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D19=
2.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...
<font color=3D"#4E9A06">[INFO] [MPMD] </font>Initializing 1 device(s) in pa=
rallel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,seria=
l=3D3182B09,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D122.88e=
6
<font color=3D"#4E9A06">[INFO] [MPM.PeriphManager] </font>init() called wit=
h device args `master_clock_rate=3D122.88e6,time_source=3Dinternal,clock_so=
urce=3Dinternal,mgmt_addr=3D192.168.10.2,product=3Dn310&#39;.
<font color=3D"#4E9A06">[INFO] [0/Replay_0] </font>Initializing block contr=
ol (NOC ID: 0x4E91A00000000004)
<font color=3D"#4E9A06">[INFO] [0/Radio_0] </font>Initializing block contro=
l (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/Radio_1] </font>Initializing block contro=
l (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/DDC_0] </font>Initializing block control =
(NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DDC_1] </font>Initializing block control =
(NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DUC_0] </font>Initializing block control =
(NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/DUC_1] </font>Initializing block control =
(NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/FIFO_0] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_1] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_2] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_3] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3182B09
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium

[00:00:17.353184] Setting device timestamp to 0...
[00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
[00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
[<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking pack=
et: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handle=
r caught a value exception.
ValueError: Bad CHDR or packet fragment
00:00:17.414180] Unexpected error on recv, continuing...
[00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.514317] Unexpected error on recv, continuing...
<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packe=
t: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handle=
r caught a value exception.
ValueError: Bad CHDR or packet fragment
[00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
[00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.614377] Unexpected error on recv, continuing...
</pre>
                                </div>
_______________________________________________<br>
                                USRP-users mailing list<br>
                                <a href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                                <a href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">ht=
tp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                              </blockquote>
                            </div>
                          </div>
                        </div>
                      </blockquote>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr"><span>____________________________=
___________________</span><br>
                          <span>USRP-users mailing list</span><br>
                          <span><a href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br>
                          <span><a href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
                        </div>
                      </blockquote>
                    </div>
                  </div>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000004e8e66058e87f3cf--


--===============4716416355802330420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4716416355802330420==--

