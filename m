Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9049B22B8C2
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 23:34:53 +0200 (CEST)
Received: from [::1] (port=37306 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyirZ-0000Lk-Eu; Thu, 23 Jul 2020 17:34:49 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:40077)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jyirV-0000Cq-Ra
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 17:34:45 -0400
Received: by mail-ot1-f54.google.com with SMTP id c25so5494886otf.7
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 14:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=59XuK27SNI1ROqCzvXcZyXRCIJs1ix6lnjdM0TyCtZM=;
 b=b8QSYUi2FEuBPoMQujOUl3TGOy5CUqMHxJKTAUoEWgGG6HqY5wcuBi2Bkua8+eC81Y
 AbEPe2F23q568MTdgAoNGxCPufAhoa5tNNT30/Gv/RtWtlKdTiEYvJbv5TepC29Pg5tg
 tQJwNYb5++lTnxsHY2EhlVwtWnkz133xmQM5QW+p5Jx739fA4hTUtjP12bYC6CIIjBee
 gGTcyhY9/6ZQOdAqp0Hm8P58ginZnutI2FaUfqfdIwZ7RJY4TslMXfrE8oRq9QJiuTBp
 euMb/ZOUTQVWBnP+5noy9DK3ayuwQ3ipdcCNQqXTpBMUZkrwVFZOgs0dNp+RJzB51gKG
 iJAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=59XuK27SNI1ROqCzvXcZyXRCIJs1ix6lnjdM0TyCtZM=;
 b=jRtQuVN0IEQjejSXJYlChZvgEXf6WS2QjbAV0MMv1mxxqWzt/q5w4UbUqmvWk5NE7o
 R6lJq4z/6mTl3+vKlDZOb4h2pmiX8GhdX/wLnhxRFyhLVRNwE/+MedfZ3WW/MAgPf0LM
 HwPnCcHSMTbzDaKQSmnkt9ad/IcCm6pC/5CgW/naIaNLbCESgUC3LpSxCzQulqqCqiL8
 XbkeDT6l06tJn83kxyF+jg+ZUUsPtGoG/RweP0i2aUu9zhIC0HP6vZ/BvO6ThlLVrmMx
 +OWt1Fztr5IeL4MphrIPkOKnSybpOwnDAiWGbvccQzcBlVsCasd5e/yeknzxA+tx9ESk
 UXUg==
X-Gm-Message-State: AOAM530jaJGgKjN2GlKeplD/eMxl0/dA2Lo4Lax6rivKtgj3h0pkuNm1
 5M2M1TzZh+aD1J6hkuQ+K39aAQPL3qkDW/BoEOvv9w==
X-Google-Smtp-Source: ABdhPJzZHYjDbEpH5K+aIC3KRr8YqVmJiGrDWy0pTWwD94bHTxK7R2ujl5F3ZnzCbn53jr9YrkwHe14VRa+RRAHIbD8=
X-Received: by 2002:a05:6830:1112:: with SMTP id
 w18mr5850507otq.301.1595540044842; 
 Thu, 23 Jul 2020 14:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <b2ae131056ae4db29b51cfcb63f13284@gtri.gatech.edu>
 <16b71d7c13fe4059b9b7c3ad660eef87@gtri.gatech.edu>
 <CA+JMMq95M=qo8N+Ci1r=rcxaLtP086wvu6gAOg6Lz1wX6ZANOQ@mail.gmail.com>
 <3c078c0019c84b408ba615a394654810@gtri.gatech.edu>
In-Reply-To: <3c078c0019c84b408ba615a394654810@gtri.gatech.edu>
Date: Thu, 23 Jul 2020 17:33:53 -0400
Message-ID: <CAB__hTRsOz249ZfrKUVmMS+7HsOtzpiXxBSiXMyNCG5yT-ZDXQ@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Subject: Re: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph
 Not Working
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1953719598280172468=="
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

--===============1953719598280172468==
Content-Type: multipart/alternative; boundary="0000000000009934b505ab229d70"

--0000000000009934b505ab229d70
Content-Type: text/plain; charset="UTF-8"

The error you are getting looks like an index out of range error (as if you
are requesting to set the gain on a channel that the USRP object doesn't
think exists).  Although I do not typically operate in gnuradio land, I
recall in the past that sometimes it was necessary to specifically specify
"device" or "port" args (e.g., set them to zero) rather than use their
defaults of "-1".
Rob

On Thu, Jul 23, 2020 at 2:48 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thank you Nick. I was using those same settings you recommended and still
> getting the error.
>
>
> The issue may be that I am using the LFRX boards? Are they not supported
> with RFNoC because of the sample rate?
>
>
> Jeff
>
>
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.15.0.0-54-gbc585b43
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>   _____________________________________________________
>  /
> |       Device: X-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: X310
> |   |   revision: 11
> |   |   revision_compat: 7
> |   |   product: 30818
> |   |   mac-addr0: 00:80:2f:17:b8:5f
> |   |   mac-addr1: 00:80:2f:17:b8:60
> |   |   gateway: 192.168.10.1
> |   |   ip-addr0: 192.168.10.2
> |   |   subnet0: 255.255.255.0
> |   |   ip-addr1: 192.168.20.2
> |   |   subnet1: 255.255.255.0
> |   |   ip-addr2: 192.168.30.2
> |   |   subnet2: 255.255.255.0
> |   |   ip-addr3: 192.168.40.2
> |   |   subnet3: 255.255.255.0
> |   |   serial: 312CEC4
> |   |   FW Version: 6.0
> |   |   FPGA Version: 36.0
> |   |   FPGA git hash: 9ba275d
> |   |   RFNoC capable: Yes
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: internal, external, gpsdo
> |   |   Sensors: ref_locked
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: A
> |   |   |   ID: LF RX (0x000f)
> |   |   |   Serial: 3117C2F
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: AB
> |   |   |   |   Name: LFRX (AB)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: BA
> |   |   |   |   Name: LFRX (BA)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: QI
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: A
> |   |   |   |   Name: LFRX (A)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: I
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: B
> |   |   |   |   Name: LFRX (B)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: Q
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: A
> |   |   |   |   Name: ads62p48
> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: B
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 0
> |   |   |   |   Name: Unknown (0xffff) - 0
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: 0.000 to 0.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: B
> |   |   |   |   Name: ads62p48
> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: A
> |   |   |   ID: LF TX (0x000e)
> |   |   |   Serial: 312D6A8
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: AB
> |   |   |   |   Name: LFTX (AB)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: BA
> |   |   |   |   Name: LFTX (BA)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: QI
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: A
> |   |   |   |   Name: LFTX (A)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: I
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: B
> |   |   |   |   Name: LFTX (B)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: Q
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: A
> |   |   |   |   Name: ad9146
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: B
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 0
> |   |   |   |   Name: Unknown (0xffff) - 0
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: 0.000 to 0.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: B
> |   |   |   |   Name: ad9146
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RFNoC blocks on this device:
> |   |   |
> |   |   |   * DmaFIFO_0
> |   |   |   * Radio_0
> |   |   |   * Radio_1
> |   |   |   * DDC_0
> |   |   |   * DDC_1
> |   |   |   * DUC_0
> |   |   |   * DUC_1
>
>
>
> ------------------------------
> *From:* Nick Foster <bistromath@gmail.com>
> *Sent:* Thursday, July 23, 2020 2:40 PM
> *To:* Hodges, Jeff
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] X310 RFNoC Basic Transmit Signal Source
> Flowgraph Not Working
>
> RFNoC Radio runs at a constant 200Msps. Use DUC parameters: input rate
> 1Msps, output rate 200Msps. Use Radio parameter: Sampling Rate 200Msps.
>
> I don't know why you're getting a gain error. What daughterboard are you
> using?
>
> In addition, you probably don't need the DMA FIFO for this FG.
>
> Nick
>
> On Thu, Jul 23, 2020 at 11:34 AM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Has anyone been able to transmit with RFNoC Radio using the standard FPGA
>> image from UHD.3.15.LTS?
>>
>>
>> I have a clean installation and ran SigGen --> RFNoC: DmaFIFO --> RFNoC:
>> DUC --> RFNoC: Radio
>>
>>
>> Most basic flow graph ever. It does not work. I get a run-time error.
>>
>>
>> Traceback (most recent call last):
>>   File "/home/nvd/Documents/top_block.py", line 169, in <module>
>>     main()
>>   File "/home/nvd/Documents/top_block.py", line 157, in main
>>     tb = top_block_cls()
>>   File "/home/nvd/Documents/top_block.py", line 84, in __init__
>>     self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)
>>   File "/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.py", line
>> 3235, in set_tx_gain
>>     return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, gain, chan)
>> RuntimeError: _Map_base::at
>>
>>
>>
>> Jeff
>> ------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>> Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Wednesday, July 22, 2020 8:49:05 PM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* [USRP-users] X310 RFNoC Basic Transmit Signal Source
>> Flowgraph Not Working
>>
>>
>> I get a set_tx_gain error running a basic signal generator through RFNoC
>> Radio:
>>
>> Signal Source -> DMA FIFO -> DUC -> Radio  (See image below)
>>
>>
>> This is equivalent to:
>> Signal Source --> USRP Sink    (Works fine)
>>
>>
>> https://kb.ettus.com/File:dma_fifo_v02.png
>>
>>
>> <https://kb.ettus.com/File:dma_fifo_v02.png>
>>
>> Traceback (most recent call last):
>>   File "/home/nvd/Documents/top_block.py", line 169, in <module>
>>     main()
>>   File "/home/nvd/Documents/top_block.py", line 157, in main
>>     tb = top_block_cls()
>>   File "/home/nvd/Documents/top_block.py", line 84, in __init__
>>     self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)
>>   File "/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.py", line
>> 3235, in set_tx_gain
>>     return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, gain, chan)
>> RuntimeError: _Map_base::at
>>
>>
>> I am using 3.15.LTS.
>>
>>
>> Any ideas?
>>
>>
>> Thanks,
>>
>>
>> Jeff
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009934b505ab229d70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The error you are getting looks like an i=
ndex out of range error (as if you are requesting to set the gain on a chan=
nel that the USRP object doesn&#39;t think exists).=C2=A0 Although=C2=A0I d=
o not typically operate in gnuradio land, I recall in the past that sometim=
es it was necessary to specifically specify &quot;device&quot; or &quot;por=
t&quot; args (e.g., set them to zero) rather than use their defaults of &qu=
ot;-1&quot;.=C2=A0=C2=A0<div>Rob</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 23, 2020 at 2:48 PM Hodge=
s, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_2420182965443321513divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p>Thank you Nick. I was using those same settings you recommended and stil=
l getting the error.</p>
<p><br>
</p>
<p>The issue may be that I am using the LFRX boards? Are they not supported=
 with RFNoC because of the sample rate?</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<p><br>
</p>
<p><br>
</p>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-=
54-gbc585b43<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 1472 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
=C2=A0 _____________________________________________________<br>
=C2=A0/<br>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: X-Series Device<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 _________________________________________________=
____<br>
|=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard: X310<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 revision: 11<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 revision_compat: 7<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 product: 30818<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr0: 00:80:2f:17:b8:5f<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 mac-addr1: 00:80:2f:17:b8:60<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 gateway: 192.168.10.1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr0: 192.168.10.2<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet0: 255.255.255.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr1: 192.168.20.2<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet1: 255.255.255.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr2: 192.168.30.2<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet2: 255.255.255.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 ip-addr3: 192.168.40.2<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 subnet3: 255.255.255.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: 312CEC4<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FW Version: 6.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA Version: 36.0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 FPGA git hash: 9ba275d<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 RFNoC capable: Yes<br>
|=C2=A0=C2=A0 |=C2=A0 =C2=A0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Time sources:=C2=A0 internal, external, gpsdo<b=
r>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Clock sources: internal, external, gpsdo<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: ref_locked<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard=
: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: LF RX (0x000f)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 3117C2F<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: AB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: LFRX (AB)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: AB, BA, A=
, B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -32.000=
 to 32.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 64=
000000.0 to 64000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: IQ=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: BA<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: LFRX (BA)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: AB, BA, A=
, B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -32.000=
 to 32.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 64=
000000.0 to 64000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: QI=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: LFRX (A)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: AB, BA, A=
, B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -32.000=
 to 32.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 32=
000000.0 to 32000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: I<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: LFRX (B)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: AB, BA, A=
, B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -32.000=
 to 32.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 32=
000000.0 to 32000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: Q<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Codec: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ads62p48<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range digital:=
 0.0 to 6.0 step 0.5 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RX Dboard=
: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Frontend: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Unknown (0xff=
ff) - 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 0.000 t=
o 0.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 0.=
0 to 0.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: IQ=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 RX Codec: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ads62p48<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain range digital:=
 0.0 to 6.0 step 0.5 dB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard=
: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 ID: LF TX (0x000e)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Serial: 312D6A8<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: AB<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: LFTX (AB)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -32.000=
 to 32.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 64=
000000.0 to 64000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: IQ=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: BA<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: LFTX (BA)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -32.000=
 to 32.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 64=
000000.0 to 64000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: QI=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: LFTX (A)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -32.000=
 to 32.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 32=
000000.0 to 32000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: I<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: LFTX (B)<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: -32.000=
 to 32.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 32=
000000.0 to 32000000.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: Q<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Codec: A<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ad9146<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TX Dboard=
: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Frontend: 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: Unknown (0xff=
ff) - 0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Antennas: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Sensors: <br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Freq range: 0.000 t=
o 0.000 MHz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Bandwidth range: 0.=
0 to 0.0 step 0.0 Hz<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Connection Type: IQ=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Uses LO offset: No<=
br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 _____________________=
________________________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 TX Codec: B<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Name: ad9146<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 Gain Elements: None=
<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 ___________________________________=
__________________<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 /<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNoC blo=
cks on this device:<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0 =C2=A0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DmaFIFO_0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * Radio_1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DDC_1<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_0<br>
|=C2=A0=C2=A0 |=C2=A0=C2=A0 |=C2=A0=C2=A0 * DUC_1<br>
<br>
</div>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_2420182965443321513divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_bl=
ank">bistromath@gmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, July 23, 2020 2:40 PM<br>
<b>To:</b> Hodges, Jeff<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] X310 RFNoC Basic Transmit Signal Source Fl=
owgraph Not Working</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>RFNoC Radio runs at a constant 200Msps. Use DUC parameters: input rate=
 1Msps, output rate 200Msps. Use Radio parameter: Sampling Rate 200Msps.</d=
iv>
<div><br>
</div>
<div>I don&#39;t know why you&#39;re getting a gain error. What daughterboa=
rd are you using?<br>
</div>
<div><br>
</div>
<div>In addition, you probably don&#39;t need the DMA FIFO for this FG.</di=
v>
<div><br>
</div>
<div>Nick<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 23, 2020 at 11:34 AM Hodg=
es, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_2420182965443321513gmail-m_-3662757746033311085divtagdef=
aultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-fami=
ly:Calibri,Helvetica,sans-serif">
<p>Has anyone been able to transmit with RFNoC Radio using the standard FPG=
A image from UHD.3.15.LTS?</p>
<p><br>
</p>
<p>I have a clean installation and ran SigGen --&gt; RFNoC: DmaFIFO --&gt; =
RFNoC: DUC --&gt; RFNoC: Radio</p>
<p><br>
</p>
<p>Most basic flow graph ever. It does not work. I get a run-time error.=C2=
=A0</p>
<p><br>
</p>
<p></p>
<div>Traceback (most recent call last):<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 169, in &lt;=
module&gt;<br>
=C2=A0=C2=A0=C2=A0 main()<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 157, in main=
<br>
=C2=A0=C2=A0=C2=A0 tb =3D top_block_cls()<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 84, in __ini=
t__<br>
=C2=A0=C2=A0=C2=A0 self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)<br>
=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.p=
y&quot;, line 3235, in set_tx_gain<br>
=C2=A0=C2=A0=C2=A0 return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, ga=
in, chan)<br>
RuntimeError: _Map_base::at<br>
</div>
<br>
<p></p>
<p><br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_2420182965443321513gmail-m_-3662757746033311085divRplyFw=
dMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-seri=
f" color=3D"#000000"><b>From:</b> USRP-users &lt;<a href=3D"mailto:usrp-use=
rs-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettu=
s.com</a>&gt;
 on behalf of Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 22, 2020 8:49:05 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgr=
aph Not Working</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_2420182965443321513gmail-m_-3662757746033311085divtagdef=
aultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-fami=
ly:Calibri,Helvetica,sans-serif">
<p>I get a set_tx_gain error running a basic signal generator through RFNoC=
 Radio:
<br>
<br>
Signal Source -&gt; DMA FIFO -&gt; DUC -&gt; Radio=C2=A0 (See image below)<=
/p>
<p><br>
</p>
<p></p>
<div>
<p>This is equivalent to:</p>
Signal Source --&gt; USRP Sink=C2=A0=C2=A0=C2=A0 (Works fine)</div>
<br>
<br>
<a href=3D"https://kb.ettus.com/File:dma_fifo_v02.png" id=3D"gmail-m_242018=
2965443321513gmail-m_-3662757746033311085LPlnk387264" target=3D"_blank">htt=
ps://kb.ettus.com/File:dma_fifo_v02.png</a>
<p></p>
<p><a href=3D"https://kb.ettus.com/File:dma_fifo_v02.png" id=3D"gmail-m_242=
0182965443321513gmail-m_-3662757746033311085LPlnk387264" target=3D"_blank">=
<br>
</a></p>
<p></p>
<div>Traceback (most recent call last):<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 169, in &lt;=
module&gt;<br>
=C2=A0=C2=A0=C2=A0 main()<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 157, in main=
<br>
=C2=A0=C2=A0=C2=A0 tb =3D top_block_cls()<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 84, in __ini=
t__<br>
=C2=A0=C2=A0=C2=A0 self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)<br>
=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.p=
y&quot;, line 3235, in set_tx_gain<br>
=C2=A0=C2=A0=C2=A0 return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, ga=
in, chan)<br>
RuntimeError: _Map_base::at<br>
<br>
</div>
<p></p>
<p><br>
</p>
<p>I am using 3.15.LTS.</p>
<p><br>
</p>
Any ideas?
<p><br>
Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<br>
<p></p>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000009934b505ab229d70--


--===============1953719598280172468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1953719598280172468==--

