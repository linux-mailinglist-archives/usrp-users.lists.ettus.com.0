Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BE6396779
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 19:56:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBE913840BA
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 13:56:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l3y5GUBu";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 998F7384066
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 13:55:15 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id c10so8396414qtx.10
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 10:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=BJCC4HgWVCO7e6I92V2ybKUH3GjVA7BSIxFtGpnWXXM=;
        b=l3y5GUBuX7JMcYT6udHabN50+GVY4S/Rs2mCgEwxFPCB2TTz+npqokiZNMwjt47jat
         VfMUocFwCQ3/9D4YWUGLLBu5wp0ClixPyZtjzytDUTnhorMtVBWTV0fdSxqrSOrYuGhi
         OceULCUd2TFZiWORKEosO86j1igtua8Ra/LVI/y0QLyPg48VYSsxCPPA6WWljtPs/enJ
         Ug61ZXa4G8AfeQVQymWkF2hjbTDfoYa7fZjrWrdZCasmlmm5u79tRQDEUL1FJaVow6hd
         /Y2BSNG7zYxETPkCQWPhD1c8Sp1Xx6xor6JjvGWiz4FVxNiAwMNfpmwIoZsd7JLUOG5i
         RUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=BJCC4HgWVCO7e6I92V2ybKUH3GjVA7BSIxFtGpnWXXM=;
        b=r6yn4E+O348e6cbDJ08JNQnox09rpvs6O+KDp4hSJ/iwC+PZ4SCkUzpHvDSSZExSNy
         mMtIx8hsXAArkxDpDjzpdAUYOPyYUqhqnotkTbFS0TRoNd7+HDyLjhZ9dOOkE52WhLkD
         0gbIgnt6JB3dpZRiWWcPyJ2A3Idya2zpI3rmxoTMv8nztqXTSdZfBKQ8I40XQ8HWWIQn
         PwBHNxO8z1KQkvk0ggUHb6cyCzKlOPdrRqDlQ+JHFjpH1JkDYhPWloT0zRmBTOfLn7bY
         kNCG5gNYB1jNNNGUhHptOcl9vWc1SLH4w5Cru1yROAzJ9Hbj0g1CStrZTPqdaDc40JU/
         KBYA==
X-Gm-Message-State: AOAM531QWUt00PgGjMPEMX/i3ZJgQwm9lbILgXJFzo0wvQlaQ9zOAGQK
	i9nzCvy9OyeOFSLEOO88ZLt2Td4SDnI=
X-Google-Smtp-Source: ABdhPJyWhX+CJ8uxcHWh4CuSzrnlQ9MlLXm8UINVnObGyRMc03hHahR1QykLF3ww3jpQpt7ZXB1drQ==
X-Received: by 2002:a05:622a:1714:: with SMTP id h20mr15795047qtk.311.1622483714760;
        Mon, 31 May 2021 10:55:14 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id b123sm9888178qke.87.2021.05.31.10.55.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 10:55:14 -0700 (PDT)
Message-ID: <60B52301.6030204@gmail.com>
Date: Mon, 31 May 2021 13:55:13 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>
References: <1622468756733.49774@isc.tuc.gr>,<3C0D211F-9EF3-4185-B74B-D66559AD991E@gmail.com> <12f9d770-a055-4d78-9323-eeb6c1517c87@email.android.com>
In-Reply-To: <12f9d770-a055-4d78-9323-eeb6c1517c87@email.android.com>
Message-ID-Hash: BYAFY6RDZHQNWSOVO7OR2JPQQA5URLZM
X-Message-ID-Hash: BYAFY6RDZHQNWSOVO7OR2JPQQA5URLZM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BYAFY6RDZHQNWSOVO7OR2JPQQA5URLZM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0050327938492737220=="

This is a multi-part message in MIME format.
--===============0050327938492737220==
Content-Type: multipart/alternative;
 boundary="------------050409060808040009000403"

This is a multi-part message in MIME format.
--------------050409060808040009000403
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/31/2021 01:53 PM, Skyvalakis Konstantinos wrote:
> I am using a gigabit ethernet switch to control the 2 USRPs and my=20
> sampling rate is 2MHz for each source and 1MHz for the sink.
What version of UHD, and what is your *HOST* ethernet interface type? =20
There are some Intel 82579-family controllers out there
   that have hardware bugs that cause dropped frames when no frames=20
should be dropped.


>
> On May 31, 2021 18:54, Marcus D Leech <patchvonbraun@gmail.com> wrote:
> What sample rate are you using? What type of Ethernet interface?
>
> Sent from my iPhone
>
>> On May 31, 2021, at 9:46 AM, Skyvalakis Konstantinos=20
>> <kskyvalakis@isc.tuc.gr> wrote:
>>
>> =EF=BB=BF
>>
>> I did what you said and changed my code to accordingly:
>>
>>
>>     self.sink =3D uhd.usrp_sink(
>>     ",".join(("", "addr=3D192.168.10.2")),
>>     uhd.stream_args(
>>     cpu_format=3D"fc32",
>>     channels=3Drange(1),
>>     ),
>>     )
>>
>>     self.source =3D uhd.usrp_source(
>>     ",".join(("addr0=3D192.168.10.2,addr1=3D192.168.10.3", "")),
>>     uhd.stream_args(
>>     cpu_format=3D"fc32",
>>     channels=3Drange(2),
>>     ),
>>     )
>>     self.source.set_clock_source('external', 0);
>>     self.source.set_time_source('external', 0);
>>     self.source.set_clock_source('external', 1);
>>     self.source.set_time_source('external', 1);
>>     self.source.set_time_unknown_pps(uhd.time_spec())
>>     self.source.set_samp_rate(self.adc_rate)
>>     self.source.set_gain(self.rx_gain0,0)
>>     self.source.set_gain(self.rx_gain1,1)
>>     self.source.set_antenna("RX2",0)
>>     self.source.set_antenna("RX2",1)
>>
>>     self.sink.set_clock_source('external');
>>     self.sink.set_time_source('external');
>>     self.sink.set_time_unknown_pps(uhd.time_spec())
>>     self.sink.set_samp_rate(self.dac_rate)
>>     self.sink.set_gain(self.tx_gain)
>>     self.sink.set_antenna("TX/RX")
>>
>>     time.sleep(1)
>>
>>     cmd_time0 =3D self.source.get_time_last_pps()
>>     cmd_time1 =3D self.sink.get_time_last_pps()
>>     real_seconds0 =3D uhd.time_spec_t.get_real_secs(cmd_time0)
>>     real_seconds1 =3D uhd.time_spec_t.get_real_secs(cmd_time1)
>>     future_real_seconds0 =3D real_seconds0 + 1
>>     future_real_seconds1 =3D real_seconds1 + 1
>>     future_cmd_time0 =3D uhd.time_spec_t(future_real_seconds0)
>>     future_cmd_time1 =3D uhd.time_spec_t(future_real_seconds1)
>>     self.source.set_command_time(future_cmd_time0)
>>     self.sink.set_command_time(future_cmd_time1)
>> self.source.set_center_freq(uhd.tune_request(self.freq,0), 0)
>> self.source.set_center_freq(uhd.tune_request(self.freq,0), 1)
>> self.sink.set_center_freq(uhd.tune_request(self.freq,0), 0)
>>     self.source.clear_command_time()
>>     self.sink.clear_command_time()
>>
>>
>>
>> When I run the code it output the following error in the terminal:
>>
>>
>> Traceback (most recent call last):
>>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 171, in=20
>> <module>
>>     main_block =3D reader_top_block()
>>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 140, in=20
>> __init__
>>     self.usrp_init()
>>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 55, in=20
>> usrp_init
>>     self.sink.set_time_unknown_pps(uhd.time_spec())
>>   File=20
>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",=20
>> line 4779, in set_time_unknown_pps
>>     return _uhd_swig.usrp_sink_sptr_set_time_unknown_pps(self, time_sp=
ec)
>> RuntimeError: RuntimeError: fifo ctrl timed out looking for acks
>>
>> =E2=80=8B
>>
>>
>>
>> ----------------------------------------------------------------------=
--
>> *From:* Skyvalakis Konstantinos
>> *Sent:* Monday, May 31, 2021 3:55 PM
>> *To:* Marcus D. Leech
>> *Subject:* Re: USRP N200
>>
>> =E2=80=8BThank you very much for the suggestion.
>>
>>
>> I will try it ASAP and I will let you know.
>>
>>
>> ----------------------------------------------------------------------=
--
>> *From:* Discuss-gnuradio=20
>> <discuss-gnuradio-bounces+kskyvalakis=3Disc.tuc.gr@gnu.org> on behalf=20
>> of Marcus D. Leech <patchvonbraun@gmail.com>
>> *Sent:* Monday, May 31, 2021 3:42 PM
>> *To:* discuss-gnuradio@gnu.org
>> *Subject:* Re: USRP N200
>> On 05/31/2021 06:23 AM, Skyvalakis Konstantinos wrote:
>>>
>>> Hi,
>>>
>>>
>>> I have 2 USRP N200 devices equipped with an SBX daughterboard each.
>>>
>>>
>>> I want to build a 1 Tx, 2 Rx system, where everything is synchronized=
.
>>>
>>>
>>> =E2=80=8BI have an external generator to provide 10MHz ref clock and =
PPS=20
>>> input for both USRP devices with equal length cables.
>>>
>>>
>>> The 1st USRP, with the SBX daughterboard, is both Tx and Rx.
>>>
>>>
>>> The 2nd USRP, with the SBX daughterboard, is just Rx.
>>>
>>>
>>> Phase synchronization is crucial to my application and thus I really=20
>>> need to know if I am doing it right or not.
>>>
>>>
>>> Therefore, I am attaching the following code in Python, that I=20
>>> use to synchronize the devices and I would like to know if it's=20
>>> correct or not.
>>>
>>>
>>>   def usrp_init(self):
>>>     self.source =3D [None, None]
>>>     self.source[0] =3D uhd.usrp_source(
>>>     device_addr=3Dself.usrp_address_source[0],
>>>     stream_args=3Duhd.stream_args(
>>>     cpu_format=3D"fc32",
>>>     channels=3Drange(1),
>>>     ),
>>>     )
>>>
>>>     self.source[1] =3D uhd.usrp_source(
>>>     device_addr=3Dself.usrp_address_source[1],
>>>     stream_args=3Duhd.stream_args(
>>>     cpu_format=3D"fc32",
>>>     channels=3Drange(1),
>>>     ),
>>>     )
>>>
>>>     self.sink =3D uhd.usrp_sink(
>>>     device_addr=3Dself.usrp_address_sink,
>>>     stream_args=3Duhd.stream_args(
>>>     cpu_format=3D"fc32",
>>>     channels=3Drange(1),
>>>     ),
>>>     )
>>>
>>> self.source[0].set_clock_source('external', 0);
>>> self.source[0].set_time_source('external', 0);
>>> self.source[0].set_time_unknown_pps(uhd.time_spec())
>>> self.source[0].set_samp_rate(self.adc_rate)
>>>     self.source[0].set_gain(self.rx_gain0, 0)
>>>     self.source[0].set_antenna("RX2", 0)
>>>
>>> self.source[1].set_clock_source('external', 0)
>>> self.source[1].set_time_source('external', 0)
>>> self.source[1].set_time_unknown_pps(uhd.time_spec())
>>> self.source[1].set_samp_rate(self.adc_rate)
>>>     self.source[1].set_gain(self.rx_gain1, 0)
>>>     self.source[1].set_antenna("RX2", 0)
>>>
>>>     self.sink.set_clock_source('external', 0);
>>>     self.sink.set_time_source('external', 0);
>>> self.sink.set_time_unknown_pps(uhd.time_spec())
>>>     self.sink.set_samp_rate(self.dac_rate)
>>>     self.sink.set_gain(self.tx_gain, 0)
>>>     self.sink.set_antenna("TX/RX", 0)
>>>
>>>     time.sleep(1)
>>>
>>>     cmd_time0 =3D self.source[0].get_time_last_pps()
>>>     cmd_time1 =3D self.source[1].get_time_last_pps()
>>>     cmd_time2 =3D self.sink.get_time_last_pps()
>>>     real_seconds0 =3D uhd.time_spec_t.get_real_secs(cmd_time0)
>>>     real_seconds1 =3D uhd.time_spec_t.get_real_secs(cmd_time1)
>>>     real_seconds2 =3D uhd.time_spec_t.get_real_secs(cmd_time2)
>>>     future_real_seconds0 =3D real_seconds0 + 1
>>>     future_real_seconds1 =3D real_seconds1 + 1
>>>     future_real_seconds2 =3D real_seconds2 + 1
>>>     future_cmd_time0 =3D uhd.time_spec_t(future_real_seconds0)
>>>     future_cmd_time1 =3D uhd.time_spec_t(future_real_seconds1)
>>>     future_cmd_time2 =3D uhd.time_spec_t(future_real_seconds2)
>>> self.source[0].set_command_time(future_cmd_time0)
>>> self.source[1].set_command_time(future_cmd_time1)
>>> self.sink.set_command_time(future_cmd_time2)
>>> self.source[0].set_center_freq(uhd.tune_request(self.freq,0), 0)
>>> self.source[1].set_center_freq(uhd.tune_request(self.freq,0), 0)
>>> self.sink.set_center_freq(uhd.tune_request(self.freq,0), 0)
>>>     self.source[0].clear_command_time()
>>>     self.source[1].clear_command_time()
>>>     self.sink.clear_command_time()
>>>
>>> Thanks in advance.
>>>
>>> Konstantinos
>>>
>>>
>> Your RX streams need to be coming from a SINGLE multi_usrp object,=20
>> not separate objects.
>>
>> Please see the rx_multi_samples example code.
>>
>> Also there's a good knowledge-base article about synchronization:
>>
>> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Dev=
ices
>>
>>


--------------050409060808040009000403
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 05/31/2021 01:53 PM, Skyvalakis
      Konstantinos wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:12f9d770-a055-4d78-9323-eeb6c1517c87@email.android.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <meta content=3D"text/html; charset=3Dutf-8">
      <div dir=3D"auto">I am using a gigabit ethernet switch to control
        the 2 USRPs and my sampling rate is 2MHz for each source and
        1MHz for the sink.</div>
    </blockquote>
    What version of UHD, and what is your *HOST* ethernet interface
    type?=C2=A0 There are some Intel 82579-family controllers out there<b=
r>
    =C2=A0 that have hardware bugs that cause dropped frames when no fram=
es
    should be dropped.<br>
    <br>
    <br>
    <blockquote
      cite=3D"mid:12f9d770-a055-4d78-9323-eeb6c1517c87@email.android.com"
      type=3D"cite">
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On May 31, 2021 18:54, Marcus D Leech
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun=
@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br type=3D"attribu=
tion">
        </div>
      </div>
      <div>What sample rate are you using? What type of Ethernet
        interface?<br>
        <br>
        <div dir=3D"ltr">Sent from my iPhone</div>
        <div dir=3D"ltr"><br>
          <blockquote type=3D"cite">On May 31, 2021, at 9:46 AM,
            Skyvalakis Konstantinos <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:kskyvalakis@isc.tuc.gr">&lt;kskyvalakis@isc.tuc.gr&gt;</a>
            wrote:<br>
            <br>
          </blockquote>
        </div>
        <blockquote type=3D"cite">
          <div dir=3D"ltr">=EF=BB=BF
            <p>I did what you said and changed my code to accordingly:<br=
>
            </p>
            <p><br>
            </p>
            <div>=C2=A0=C2=A0=C2=A0=C2=A0self.sink =3D uhd.usrp_sink(</di=
v>
            <div>=C2=A0 =C2=A0 ",".join(("", "addr=3D192.168.10.2")),</di=
v>
            <div>=C2=A0 =C2=A0 uhd.stream_args(</div>
            <div>=C2=A0 =C2=A0 cpu_format=3D"fc32",</div>
            <div>=C2=A0 =C2=A0 channels=3Drange(1),</div>
            <div>=C2=A0 =C2=A0 ),</div>
            <div>=C2=A0 =C2=A0 )</div>
            <div><br>
            </div>
            <div>=C2=A0 =C2=A0 self.source =3D uhd.usrp_source(</div>
            <div>=C2=A0 =C2=A0 ",".join(("addr0=3D192.168.10.2,addr1=3D19=
2.168.10.3",
              "")),</div>
            <div>=C2=A0 =C2=A0 uhd.stream_args(</div>
            <div>=C2=A0 =C2=A0 cpu_format=3D"fc32",</div>
            <div>=C2=A0 =C2=A0 channels=3Drange(2),</div>
            <div>=C2=A0 =C2=A0 ),</div>
            <div>=C2=A0 =C2=A0 )</div>
            <div>=C2=A0 =C2=A0 self.source.set_clock_source('external', 0=
);</div>
            <div>=C2=A0 =C2=A0 self.source.set_time_source('external', 0)=
;</div>
            <div>=C2=A0 =C2=A0 self.source.set_clock_source('external', 1=
);</div>
            <div>=C2=A0 =C2=A0 self.source.set_time_source('external', 1)=
;</div>
            <div>=C2=A0 =C2=A0 self.source.set_time_unknown_pps(uhd.time_=
spec())</div>
            <div>=C2=A0 =C2=A0 self.source.set_samp_rate(self.adc_rate)</=
div>
            <div>=C2=A0 =C2=A0 self.source.set_gain(self.rx_gain0,0)</div=
>
            <div>=C2=A0 =C2=A0 self.source.set_gain(self.rx_gain1,1)</div=
>
            <div>=C2=A0 =C2=A0 self.source.set_antenna("RX2",0)</div>
            <div>=C2=A0 =C2=A0 self.source.set_antenna("RX2",1)</div>
            <div><br>
            </div>
            <div>=C2=A0 =C2=A0 self.sink.set_clock_source('external');</d=
iv>
            <div>=C2=A0 =C2=A0 self.sink.set_time_source('external');</di=
v>
            <div>=C2=A0 =C2=A0 self.sink.set_time_unknown_pps(uhd.time_sp=
ec())</div>
            <div>=C2=A0 =C2=A0 self.sink.set_samp_rate(self.dac_rate)</di=
v>
            <div>=C2=A0 =C2=A0 self.sink.set_gain(self.tx_gain)</div>
            <div>=C2=A0 =C2=A0 self.sink.set_antenna("TX/RX")</div>
            <div><br>
            </div>
            <div>=C2=A0 =C2=A0 time.sleep(1)</div>
            <div><br>
            </div>
            <div>=C2=A0 =C2=A0 cmd_time0 =3D self.source.get_time_last_pp=
s()</div>
            <div>=C2=A0 =C2=A0 cmd_time1 =3D self.sink.get_time_last_pps(=
)</div>
            <div>=C2=A0 =C2=A0 real_seconds0 =3D
              uhd.time_spec_t.get_real_secs(cmd_time0)</div>
            <div>=C2=A0 =C2=A0 real_seconds1 =3D
              uhd.time_spec_t.get_real_secs(cmd_time1)</div>
            <div>=C2=A0 =C2=A0 future_real_seconds0 =3D real_seconds0 + 1=
</div>
            <div>=C2=A0 =C2=A0 future_real_seconds1 =3D real_seconds1 + 1=
</div>
            <div>=C2=A0 =C2=A0 future_cmd_time0 =3D
              uhd.time_spec_t(future_real_seconds0)</div>
            <div>=C2=A0 =C2=A0 future_cmd_time1 =3D
              uhd.time_spec_t(future_real_seconds1)</div>
            <div>=C2=A0 =C2=A0 self.source.set_command_time(future_cmd_ti=
me0)</div>
            <div>=C2=A0 =C2=A0 self.sink.set_command_time(future_cmd_time=
1)</div>
            <div>=C2=A0 =C2=A0
              self.source.set_center_freq(uhd.tune_request(self.freq,0),
              0)</div>
            <div>=C2=A0 =C2=A0
              self.source.set_center_freq(uhd.tune_request(self.freq,0),
              1)</div>
            <div>=C2=A0 =C2=A0
              self.sink.set_center_freq(uhd.tune_request(self.freq,0),
              0)</div>
            <div>=C2=A0 =C2=A0 self.source.clear_command_time()</div>
            <div>=C2=A0 =C2=A0 self.sink.clear_command_time()<br>
            </div>
            <p><br>
            </p>
            <p><br>
            </p>
            <p>When I run the code it output the following error in the
              terminal:<br>
            </p>
            <p><br>
            </p>
            <div>Traceback (most recent call last):</div>
            <div>=C2=A0 File "./reader_monostatic_with_MIMO_sniffer_v5.py=
",
              line 171, in &lt;module&gt;</div>
            <div>=C2=A0 =C2=A0 main_block =3D reader_top_block()</div>
            <div>=C2=A0 File "./reader_monostatic_with_MIMO_sniffer_v5.py=
",
              line 140, in __init__</div>
            <div>=C2=A0 =C2=A0 self.usrp_init()</div>
            <div>=C2=A0 File "./reader_monostatic_with_MIMO_sniffer_v5.py=
",
              line 55, in usrp_init</div>
            <div>=C2=A0 =C2=A0 self.sink.set_time_unknown_pps(uhd.time_sp=
ec())</div>
            <div>=C2=A0 File
              "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_sw=
ig.py",
              line 4779, in set_time_unknown_pps</div>
            <div>=C2=A0 =C2=A0 return
              _uhd_swig.usrp_sink_sptr_set_time_unknown_pps(self,
              time_spec)</div>
            <div>RuntimeError: RuntimeError: fifo ctrl timed out looking
              for acks</div>
            <div><br>
              =E2=80=8B<br>
            </div>
            <p><br>
            </p>
            <p><br>
            </p>
            <div dir=3D"ltr" style=3D"font-size:12pt; color:#000000;
              background-color:#FFFFFF;
              font-family:Calibri,Arial,Helvetica,sans-serif">
              <hr tabindex=3D"-1" style=3D"display:inline-block; width:98=
%">
              <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                  style=3D"font-size:11pt" color=3D"#000000" face=3D"Cali=
bri,
                  sans-serif"><b>From:</b> Skyvalakis Konstantinos<br>
                  <b>Sent:</b> Monday, May 31, 2021 3:55 PM<br>
                  <b>To:</b> Marcus D. Leech<br>
                  <b>Subject:</b> Re: USRP N200</font>
                <div>=C2=A0</div>
              </div>
              <div>
                <p>=E2=80=8BThank you very much for the suggestion.<br>
                </p>
                <p><br>
                </p>
                <p>I will try it ASAP and I will let you know.<br>
                </p>
                <p><br>
                </p>
                <div style=3D"color:rgb(33,33,33)">
                  <hr tabindex=3D"-1" style=3D"display:inline-block;
                    width:98%">
                  <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                      style=3D"font-size:11pt" color=3D"#000000"
                      face=3D"Calibri, sans-serif"><b>From:</b>
                      Discuss-gnuradio
                      <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:d=
iscuss-gnuradio-bounces+kskyvalakis=3Disc.tuc.gr@gnu.org">&lt;discuss-gnu=
radio-bounces+kskyvalakis=3Disc.tuc.gr@gnu.org&gt;</a>
                      on behalf of Marcus D. Leech
                      <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:p=
atchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
                      <b>Sent:</b> Monday, May 31, 2021 3:42 PM<br>
                      <b>To:</b> <a class=3D"moz-txt-link-abbreviated" hr=
ef=3D"mailto:discuss-gnuradio@gnu.org">discuss-gnuradio@gnu.org</a><br>
                      <b>Subject:</b> Re: USRP N200</font>
                    <div>=C2=A0</div>
                  </div>
                  <div>
                    <div class=3D"moz-cite-prefix">On 05/31/2021 06:23 AM=
,
                      Skyvalakis Konstantinos wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <p>Hi,<br>
                      </p>
                      <p><br>
                      </p>
                      <p>I have 2 USRP N200 devices equipped with an SBX
                        daughterboard each.<br>
                      </p>
                      <p><br>
                      </p>
                      <p>I want to build a 1 Tx, 2 Rx system, where
                        everything is=C2=A0synchronized.<br>
                      </p>
                      <p><br>
                      </p>
                      <p>=E2=80=8BI have an external generator to provide=
 10MHz
                        ref clock and PPS input for both USRP devices
                        with equal length cables.<br>
                      </p>
                      <p><br>
                      </p>
                      <p>The=C2=A01st USRP, with the SBX daughterboard, i=
s
                        both=C2=A0Tx and=C2=A0Rx.<br>
                      </p>
                      <p><br>
                      </p>
                      <p>The 2nd <span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)">
                          USR</span><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)">P,=C2=A0</sp=
an><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)">with the
                          SBX daughterboard,</span><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)">=C2=A0is jus=
t</span><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)">=C2=A0Rx.</s=
pan><br>
                      </p>
                      <p><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)"><br>
                        </span></p>
                      <p>Phase synchronization is crucial to my
                        application and thus I really need to know if I
                        am doing it right or not.<br>
                      </p>
                      <p><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)"><br>
                        </span></p>
                      <p><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)">Therefore,=C2=
=A0I
                          am attaching=C2=A0the following code in Python,
                          that I use=C2=A0to synchronize the devices=C2=A0=
and I
                          would like to know if it's correct or not.</spa=
n></p>
                      <p><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)"><br>
                        </span></p>
                      <p><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)"></span></p>
                      <div>=C2=A0 def usrp_init(self):</div>
                      <div>=C2=A0 =C2=A0 self.source =3D [None, None]</di=
v>
                      <div>=C2=A0 =C2=A0 self.source[0] =3D uhd.usrp_sour=
ce(</div>
                      <div>=C2=A0 =C2=A0 device_addr=3Dself.usrp_address_=
source[0],</div>
                      <div>=C2=A0 =C2=A0 stream_args=3Duhd.stream_args(</=
div>
                      <div>=C2=A0 =C2=A0 cpu_format=3D"fc32",</div>
                      <div>=C2=A0 =C2=A0 channels=3Drange(1),</div>
                      <div>=C2=A0 =C2=A0 ),</div>
                      <div>=C2=A0 =C2=A0 )</div>
                      <div><br>
                      </div>
                      <div>=C2=A0 =C2=A0 self.source[1] =3D uhd.usrp_sour=
ce(</div>
                      <div>=C2=A0 =C2=A0 device_addr=3Dself.usrp_address_=
source[1],</div>
                      <div>=C2=A0 =C2=A0 stream_args=3Duhd.stream_args(</=
div>
                      <div>=C2=A0 =C2=A0 cpu_format=3D"fc32",</div>
                      <div>=C2=A0 =C2=A0 channels=3Drange(1),</div>
                      <div>=C2=A0 =C2=A0 ),</div>
                      <div>=C2=A0 =C2=A0 )</div>
                      <div><br>
                      </div>
                      <div>=C2=A0 =C2=A0 self.sink =3D uhd.usrp_sink(</di=
v>
                      <div>=C2=A0 =C2=A0 device_addr=3Dself.usrp_address_=
sink,</div>
                      <div>=C2=A0 =C2=A0 stream_args=3Duhd.stream_args(</=
div>
                      <div>=C2=A0 =C2=A0 cpu_format=3D"fc32",</div>
                      <div>=C2=A0 =C2=A0 channels=3Drange(1),</div>
                      <div>=C2=A0 =C2=A0 ),</div>
                      <div>=C2=A0 =C2=A0 )</div>
                      <div><br>
                      </div>
                      <div>=C2=A0 =C2=A0
                        self.source[0].set_clock_source('external', 0);</=
div>
                      <div>=C2=A0 =C2=A0
                        self.source[0].set_time_source('external', 0);</d=
iv>
                      <div>=C2=A0 =C2=A0
                        self.source[0].set_time_unknown_pps(uhd.time_spec=
())</div>
                      <div>=C2=A0 =C2=A0
                        self.source[0].set_samp_rate(self.adc_rate)</div>
                      <div>=C2=A0 =C2=A0 self.source[0].set_gain(self.rx_=
gain0, 0)</div>
                      <div>=C2=A0 =C2=A0 self.source[0].set_antenna("RX2"=
, 0)</div>
                      <div><br>
                      </div>
                      <div>=C2=A0 =C2=A0
                        self.source[1].set_clock_source('external', 0)</d=
iv>
                      <div>=C2=A0 =C2=A0
                        self.source[1].set_time_source('external', 0)</di=
v>
                      <div>=C2=A0 =C2=A0
                        self.source[1].set_time_unknown_pps(uhd.time_spec=
())</div>
                      <div>=C2=A0 =C2=A0
                        self.source[1].set_samp_rate(self.adc_rate)</div>
                      <div>=C2=A0 =C2=A0 self.source[1].set_gain(self.rx_=
gain1, 0)</div>
                      <div>=C2=A0 =C2=A0 self.source[1].set_antenna("RX2"=
, 0)</div>
                      <div><br>
                      </div>
                      <div>=C2=A0 =C2=A0 self.sink.set_clock_source('exte=
rnal',
                        0);</div>
                      <div>=C2=A0 =C2=A0 self.sink.set_time_source('exter=
nal', 0);</div>
                      <div>=C2=A0 =C2=A0
                        self.sink.set_time_unknown_pps(uhd.time_spec())</=
div>
                      <div>=C2=A0 =C2=A0 self.sink.set_samp_rate(self.dac=
_rate)</div>
                      <div>=C2=A0 =C2=A0 self.sink.set_gain(self.tx_gain,=
 0)</div>
                      <div>=C2=A0 =C2=A0 self.sink.set_antenna("TX/RX", 0=
)</div>
                      <div><br>
                      </div>
                      <div>=C2=A0 =C2=A0 time.sleep(1)</div>
                      <div><br>
                      </div>
                      <div>=C2=A0 =C2=A0 cmd_time0 =3D
                        self.source[0].get_time_last_pps()</div>
                      <div>=C2=A0 =C2=A0 cmd_time1 =3D
                        self.source[1].get_time_last_pps()</div>
                      <div>=C2=A0 =C2=A0 cmd_time2 =3D self.sink.get_time=
_last_pps()</div>
                      <div>=C2=A0 =C2=A0 real_seconds0 =3D
                        uhd.time_spec_t.get_real_secs(cmd_time0)</div>
                      <div>=C2=A0 =C2=A0 real_seconds1 =3D
                        uhd.time_spec_t.get_real_secs(cmd_time1)</div>
                      <div>=C2=A0 =C2=A0 real_seconds2 =3D
                        uhd.time_spec_t.get_real_secs(cmd_time2)</div>
                      <div>=C2=A0 =C2=A0 future_real_seconds0 =3D real_se=
conds0 + 1</div>
                      <div>=C2=A0 =C2=A0 future_real_seconds1 =3D real_se=
conds1 + 1</div>
                      <div>=C2=A0 =C2=A0 future_real_seconds2 =3D real_se=
conds2 + 1</div>
                      <div>=C2=A0 =C2=A0 future_cmd_time0 =3D
                        uhd.time_spec_t(future_real_seconds0)</div>
                      <div>=C2=A0 =C2=A0 future_cmd_time1 =3D
                        uhd.time_spec_t(future_real_seconds1)</div>
                      <div>=C2=A0 =C2=A0 future_cmd_time2 =3D
                        uhd.time_spec_t(future_real_seconds2)</div>
                      <div>=C2=A0 =C2=A0
                        self.source[0].set_command_time(future_cmd_time0)=
</div>
                      <div>=C2=A0 =C2=A0
                        self.source[1].set_command_time(future_cmd_time1)=
</div>
                      <div>=C2=A0 =C2=A0
                        self.sink.set_command_time(future_cmd_time2)</div=
>
                      <div>=C2=A0 =C2=A0
                        self.source[0].set_center_freq(uhd.tune_request(s=
elf.freq,0),
                        0)</div>
                      <div>=C2=A0 =C2=A0
                        self.source[1].set_center_freq(uhd.tune_request(s=
elf.freq,0),
                        0)</div>
                      <div>=C2=A0 =C2=A0
                        self.sink.set_center_freq(uhd.tune_request(self.f=
req,0),
                        0)</div>
                      <div>=C2=A0 =C2=A0 self.source[0].clear_command_tim=
e()</div>
                      <div>=C2=A0 =C2=A0 self.source[1].clear_command_tim=
e()</div>
                      <div>=C2=A0 =C2=A0 self.sink.clear_command_time()<b=
r>
                      </div>
                      <div><br>
                      </div>
                      <div>Thanks in advance.<br>
                      </div>
                      <div><br>
                      </div>
                      <div>Konstantinos<br>
                      </div>
                      <p><span
                          style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif;
                          font-size:16px;
                          background-color:rgb(255,255,255)"><br>
                        </span></p>
                    </blockquote>
                    Your RX streams need to be coming from a SINGLE
                    multi_usrp object, not separate objects.<br>
                    <br>
                    Please see the rx_multi_samples example code.<br>
                    <br>
                    Also there's a good knowledge-base article about
                    synchronization:<br>
                    <br>
                    <a moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext"
href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USR=
P_Devices">https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_=
USRP_Devices</a><br>
                    <br>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050409060808040009000403--

--===============0050327938492737220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0050327938492737220==--
