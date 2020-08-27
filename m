Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D0A2544E1
	for <lists+usrp-users@lfdr.de>; Thu, 27 Aug 2020 14:21:11 +0200 (CEST)
Received: from [::1] (port=57420 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBGtv-0003MP-J0; Thu, 27 Aug 2020 08:21:07 -0400
Received: from mail-il1-f176.google.com ([209.85.166.176]:41516)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1kBGtr-0003FS-BP
 for usrp-users@lists.ettus.com; Thu, 27 Aug 2020 08:21:03 -0400
Received: by mail-il1-f176.google.com with SMTP id q14so4647018ilj.8
 for <usrp-users@lists.ettus.com>; Thu, 27 Aug 2020 05:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=wIZ2FSC6maX7NFmZK2MTK9HcrQ3Ob/bPJYArzxavILE=;
 b=oOoayPvXzYWlOGtKITdwEhF4WVU+tuhbNNcWhO1TOeumYCMpi1KYUvpeWfSlVGiB7J
 aPc4Veke/dPeyjGSBLFn8ImL2B502qFJWaNXpuPoPRoEbIswkIsdH8WCnkH+LlH6QEyy
 UFsUfhqnBHap2REX+jy9dVboCOT3lE3BrzWVD4dzSwYd0vSdz4pJ/wO76UfVdhBtYzPS
 hNRQlCB0TdRqjFkw/ONTfIbBpAw/1EeeygymNJO6KuKnPAUyTjQ6zLoCS2buqI4yW0Bw
 QJpQ8B2t+xL/VVolcPPHtBdCfh3qcr8I/8hCp12MjDaqOwKdAmxQXJFM+KqEhf3NGmGb
 mISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=wIZ2FSC6maX7NFmZK2MTK9HcrQ3Ob/bPJYArzxavILE=;
 b=F07t02F64OaJW4Diw3EZNNY05mrrP7hI0we+I4+55aveW7KY9LnU/KNEEz0isyhEN9
 iabh0CJBD4x49kuY+OnRupDTuVrl/R0AWRcorr/aRE/P4aZc7b4iSGgO4EDx/Ct0OXEd
 q7bsWHbAQrmtjOfoZj1hZJQq/1ouT92oB26zAGyNXRK9qQxXVoFfaSfV9w7rQfZ47/Eo
 kuGxAxJX3DEjYuqnF/ZF59C6xX9ryzC4eG+sbKeWPTTTZIA49Yn3HnZcqze7qqyV/QnP
 /gHlQEwSov0NvrG2Z/SsAIMZlJwuuJFM2H3I5SBvrThxexW1SdjIZH8PoSexr5I0mOXM
 ShCQ==
X-Gm-Message-State: AOAM533ZpLfBARhc5sQmQb8n6VNUN/bZ3raFbKV+okWzy1LZyihoa7v5
 /elK4n0y/i6i3D7aHnEZgP9Ok71Yz35bVLplMwM=
X-Google-Smtp-Source: ABdhPJxlLuDMRuOLSdskqbHTAS3XFdNRh3zGnYQqG/z2FzKwlBVno236SlXCz0YKG15Wc/+p8X0mIN06w6WRrnJ1oeU=
X-Received: by 2002:a92:6a09:: with SMTP id f9mr239849ilc.273.1598530821976;
 Thu, 27 Aug 2020 05:20:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
 <CAGNhwTP+9VjAP=NphtoFcJmNn7wd5Rhd3N7z5K1ugtMa+94FUg@mail.gmail.com>
 <CAB__hTRZbQAuzbnJ1vQX8ZszRpzqnUhO_ozu0nTOPzrkQ=PP0w@mail.gmail.com>
 <CAGNhwTOMH8Ef3pCu2pHc=Ww9ENaoHCUY6Dz0KJ76cd9kL-H1xQ@mail.gmail.com>
 <CAPRRyxvAx3TMtG5fKR2A8-3NGsPd3=rZtSdcdqu8511=+KeB_Q@mail.gmail.com>
 <CAGNhwTNkb83rHpm1M_CEg7sGUsKGCCFuJB_pmcmr37mKdCQDog@mail.gmail.com>
 <CAGNhwTNMCsuDz+F9Fz7T9fUajZRFdiHsb3BHXAeUog8euJhHHg@mail.gmail.com>
 <CAPRRyxunP3AgM8to5+2+TZwGKbnHF+aGCDY5cSyTFNqoL-uFMw@mail.gmail.com>
 <CAPRRyxtmvU49W+o=4nj7fu4WnQqAA0iO5BLna3k3q1sNDqpjJg@mail.gmail.com>
 <CAGNhwTOfEBucVzCdiiDn=QZ8mB3Ai2fpjOwdAPp+swHBA_e1=w@mail.gmail.com>
 <CAPRRyxuS3koZmDs9xJzSWucEh5f8cUmMyasmMWxUk_Fd54Jqog@mail.gmail.com>
 <CAGNhwTPXARzTDuK62svyCFTWEuLgHR7++NCLShN_0ETeLnfncg@mail.gmail.com>
 <CAPRRyxuo9DHim39xS3kjPNebAp=nis=WoVcp_U9eLW6x0a44_A@mail.gmail.com>
 <CAGNhwTM1ST1FW56g2f-ANhARO+dRuD4aDe2+idq2a+3OEAtDgA@mail.gmail.com>
 <CAPRRyxvY74O2=S3s+4ZOEMozxNjPjeJJ84n7_uru8dA54LXTFw@mail.gmail.com>
 <CAGNhwTMyDTgddZDvvn9bi6Y6MRso35EcOfpJQmAyMXT+v4uv5Q@mail.gmail.com>
 <CAPRRyxvn-mgLc3vKk7oweTW+xYM=G0Echb3PSDMST2DpObFdFw@mail.gmail.com>
 <CAGNhwTP_-Dg1E7+jz3mSaPLAQw6+qyS=mrci7YHn0uRcV_ic5w@mail.gmail.com>
 <CAPRRyxu59KHOjNAjHhoDV2skwp6WVQKzUfY3Uuge6H+anhKZ3g@mail.gmail.com>
 <CAPRRyxs1nN0-CWEJezodZPJagLRUG7enLzLYUVTrFr2sg25rew@mail.gmail.com>
 <CAGNhwTPSZABdyx-2hQOYYs7rhyNxOpbqRUWUDwZEaUAU8Etbxg@mail.gmail.com>
 <CAPRRyxs07yK+1xxm9Ku-4KZsDf_3Y43Zv2g4RydJLWNEoiUXFQ@mail.gmail.com>
 <CAGNhwTOS0HVWiu1z1Y1570oxm6Mr8n2Mk7j+6fXP-Ejt8LDw4Q@mail.gmail.com>
 <CAPRRyxuwipePyLJ4Xu1zBZG3vTtsAkMV4xVJu09jkgFPj9WyVQ@mail.gmail.com>
 <CAPRRyxtEcZANCz2v1gC_sAPNP=VSUhmMMUdW2DxsLfEt9wVuQw@mail.gmail.com>
 <CAPRRyxtZ1D_d2T=xYqZqMdWKaTvc4S9GrmpJx5p6rWavJFRQYg@mail.gmail.com>
 <CAGNhwTPfvjBumJN2fNghdYgpQuaH0UJJb2_CEcUBT-ucfhbhNw@mail.gmail.com>
 <CAPRRyxsCc2uFOghYQKYh4aS--fOVTr2LcE4ojNG-gDNjYJvtew@mail.gmail.com>
 <CAGNhwTN4J+f02kmB3jU5E9nhz_j69PW8yY-pw=jgVmzhNX4nhQ@mail.gmail.com>
 <CAPRRyxvfdfuxsLP+SQ__S5_ZXqHZohwqgfuhEPffznxaP5TuAw@mail.gmail.com>
 <CAGNhwTMB-xmiC8_T_9h3rtOP+=oQdxXr30D+hhos7Xo_3_xZPg@mail.gmail.com>
 <CAPRRyxumHkxt1TpnhdSpyhecsVPhJhfoe3MszwMzsKWB35-GMw@mail.gmail.com>
 <CAGNhwTM5LE_u-p-cmUGCDTu0pfZOpOrFaxKGyxZcX3Asn+u52w@mail.gmail.com>
 <CAPRRyxtXaZonYzsaGq=xGnO9zbptyt4Mse-Oh4zNbtNxv4HqhQ@mail.gmail.com>
 <CAGNhwTOwsP6BaseXkPayMg6yQVY-P3SEF-k56X-CE1fgDNqo_g@mail.gmail.com>
 <CAPRRyxsWsqbQtYRfVL99Oez0Vkp-+=sktsGmsd1ZDg8oDpAW5w@mail.gmail.com>
 <CAGNhwTNboTno3Ok6=k1HfZ=g=OpYW3_4k0DpHZ+frDAHVV9s1A@mail.gmail.com>
In-Reply-To: <CAGNhwTNboTno3Ok6=k1HfZ=g=OpYW3_4k0DpHZ+frDAHVV9s1A@mail.gmail.com>
Date: Thu, 27 Aug 2020 15:20:10 +0300
Message-ID: <CAPRRyxtyuiCF4ikKZsz8T-gNSmfWC0BBEgVA6ypEEEbN=2Y-4g@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>,
 usrp-users <usrp-users@lists.ettus.com>, 
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="000000000000cf4c0c05addaf599"
Subject: Re: [USRP-users] GPIO setup via gnuradio
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
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

--000000000000cf4c0c05addaf599
Content-Type: multipart/alternative; boundary="000000000000cf4c0805addaf597"

--000000000000cf4c0805addaf597
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there. My problem is that even after calibration I can clearly see the
mirror channel on my USRP N 210 with SBX. Maybe someone will tell you how
to solve this problem. This problem is observed on several boards and
different boards.

=D0=B2=D1=82, 16 =D0=B8=D1=8E=D0=BD. 2020 =D0=B3. =D0=B2 17:28, Michael Dic=
kens <michael.dickens@ettus.com>:

> Hi Ivan - OK; so you got the GRC <-> GR <-> UHD <-> GPIO access to work?
> Well done!
>
> As for your next question about tuning times: the E313 is the same as an
> E310 in terms of the USRP part. Here's my understanding:
>
> Tuning times if the frequencies do not require changing out a RX filter
> should be around 25 ms; jumping between RX filters should be more like 12=
5
> ms; we use a different "RX filter" for each different frequency range.
> These are -very- typical tuning times for the E31x series; actually, this
> is true for most of our USRPs except the N3xy series which are
> intentionally designed with fast frequency switching in mind (among other
> attributes).
>
> In theory one could speed up tuning via FPGA code. I'm not an FPGA
> programmer, so I don't know how to do this nor the complexity of doing so
> -- just that in theory it could be done for specific user needs.
>
> I hope this is useful! - MLD
> ---
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>
>
> On Tue, Jun 16, 2020 at 6:39 AM Ivan Zahartchuk <adray0001@gmail.com>
> wrote:
>
>>   Hello. I nevertheless got to work and equipment and everything worked
>> out for me. Gpio works. It turns out that in theory, you can connect to =
it
>> through dev as well as to the gps receiver. I have one more question for
>> you. I plan to also use the E313 as a frequency tunable scanning receive=
r.
>> But as far as I was written before (and I was convinced of this myself)
>> that the frequency tuning is slow due to the configuration of the filter=
s
>> on the board. Tell me how can I get around this and speed up the scan. I
>> want to achieve a speed of at least 1ms at 50 MHz and the frequency tuni=
ng
>> itself in the E310 takes about 100 ms.
>>
>> =D0=BF=D1=82, 29 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 23:28, Michael D=
ickens <michael.dickens@ettus.com>:
>>
>>> Hi Ivan - It was a crazy week for me; I still don't even have the
>>> required software installed; putting out so many fires I can't count th=
em
>>> any longer! I sincerely hope next week is less stressful, and I can mak=
e
>>> progress on getting things installed. Have you made any progress on you=
r
>>> end? Cheers & happy weekend again! - MLD
>>> ---
>>> Michael Dickens
>>> Ettus Research Technical Support
>>> Email: support@ettus.com
>>> Web: https://ettus.com/
>>>
>>>
>>> On Mon, May 25, 2020 at 6:36 PM Ivan Zahartchuk <adray0001@gmail.com>
>>> wrote:
>>>
>>>>   Hello. There are no changes so far. There is no way to get to the
>>>> equipment. Waiting for your feedback on the code. Have a nice weekend)=
)))
>>>>
>>>> =D0=B2=D1=82, 19 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 00:19, Michael=
 Dickens <michael.dickens@ettus.com
>>>> >:
>>>>
>>>>> HI Ivan - Happy Monday! I hope you had a good weekend. I took an extr=
a
>>>>> part day off on both ends, which made for a lovely elongated time. I'=
ll
>>>>> take a look at your code shortly; I'm moving between computers, so I'=
ll
>>>>> need to create the UHD 3.15.0.0 + GR 3.7.14.0 Release + gr-ettus mast=
er
>>>>> installs for testing this. Always a good time getting a new computer,=
 but
>>>>> it does take time to set it up reasonably well! Any updates on your e=
nd? -
>>>>> MLD
>>>>> ---
>>>>> Michael Dickens
>>>>> Ettus Research Technical Support
>>>>> Email: support@ettus.com
>>>>> Web: https://ettus.com/
>>>>>
>>>>>
>>>>> On Fri, May 15, 2020 at 9:46 AM Ivan Zahartchuk <adray0001@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Thanks for your support. The archive has a file for USRP E310 and fo=
r
>>>>>> PC. For now, I'm just sending a request via gnuradio using the slide=
r. I
>>>>>> just have not figured out get_gpio_attr but the fact that the values=
 change
>>>>>> there gives me hope that this works.
>>>>>>
>>>>>> =D0=BF=D1=82, 15 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 00:09, Micha=
el Dickens <
>>>>>> michael.dickens@ettus.com>:
>>>>>>
>>>>>>> That's some positive progress, Ivan! Do you have any code you can
>>>>>>> pass on to me to try? I have a variety of USRPs around that should =
be
>>>>>>> usable with GPIO; doesn't need to be an E310 specifically (that's w=
hat my
>>>>>>> notes tell me you're using ... yes?). I also have both UHD 3.15.0.0=
 and the
>>>>>>> 3.15.LTS branch available for testing. - MLD
>>>>>>> ---
>>>>>>> Michael Dickens
>>>>>>> Ettus Research Technical Support
>>>>>>> Email: support@ettus.com
>>>>>>> Web: https://ettus.com/
>>>>>>>
>>>>>>>
>>>>>>> On Thu, May 14, 2020 at 3:50 PM Ivan Zahartchuk <adray0001@gmail.co=
m>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hello. Yes, I have advanced in this direction. Indeed, I figured o=
ut a bit with GPIO. The idea is to initialize usrp_source earlier than the =
RFNoC block (I don=E2=80=99t know what this is related to), and then I avoi=
d the error and in theory I have the same access to gpio. But when calling =
the get_gpio_banks command. =E2=80=9CFP0=E2=80=9D is returned to me and not=
 =E2=80=9CINTO=E2=80=9D; I have not yet carried out any further experiments=
 in connection with quarantine.
>>>>>>>>
>>>>>>>>
>>>>>>>> =D1=87=D1=82, 14 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 22:29, Mic=
hael Dickens <
>>>>>>>> michael.dickens@ettus.com>:
>>>>>>>>
>>>>>>>>> Hi Ivan - I'm glad to hear you got the firmware / FPGA images
>>>>>>>>> sorted out. That's really quite something! I'll need to do some p=
laying
>>>>>>>>> around with how to do GPIO in UHD C++. I'm confident there's a wa=
y ... just
>>>>>>>>> need the right "special sauce" if you know what I mean. Maybe you=
've made
>>>>>>>>> progress on this end? - MLD
>>>>>>>>> ---
>>>>>>>>> Michael Dickens
>>>>>>>>> Ettus Research Technical Support
>>>>>>>>> Email: support@ettus.com
>>>>>>>>> Web: https://ettus.com/
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On Mon, May 11, 2020 at 4:04 PM Ivan Zahartchuk <
>>>>>>>>> adray0001@gmail.com> wrote:
>>>>>>>>>
>>>>>>>>>> If I understand you correctly, then I need to create another
>>>>>>>>>> block uhd
>>>>>>>>>> self.uhd_usrp_source =3D uhd.usrp_source (         ",". join (("=
",
>>>>>>>>>> "")),         uhd.stream_args (         cpu_format =3D "fc32",
>>>>>>>>>>         channels =3D range (1),         ),         )
>>>>>>>>>> so I created it. But I don=E2=80=99t understand how it works sin=
ce I
>>>>>>>>>> don=E2=80=99t connect it anywhere and I get an error
>>>>>>>>>>  [WARNING] [RFNOC] [legacy compat] Not enough FIFO ports to
>>>>>>>>>> connect, not all TX sinks will be connected [WARNING] [RFNOC]
>>>>>>>>>> [legacy_compat] No DDCs detected. You will only be able to recei=
ve at the
>>>>>>>>>> radio frontend rate. [WARNING] [RFNOC] [legacy_compat] No DUCs d=
etected.
>>>>>>>>>> You will only be able to transmit at the radio frontend rate. [W=
ARNING]
>>>>>>>>>> [RFNOC] Assuming max packet size for 0 / Radio_0 thread [thread-=
per-block
>>>>>>>>>> [0]: <block uhd_rfnoc_FIFO (7)>]: RuntimeError: On node 0 / FIFO=
_0, output
>>>>>>>>>> port 0 is already connected.
>>>>>>>>>>  If somewhere there are examples of how to get to gpio correctly=
,
>>>>>>>>>> I would be very grateful if you would provide them to me. I figu=
red out the
>>>>>>>>>> FPGA firmware and now the only problem is gpio.
>>>>>>>>>>
>>>>>>>>>> =D0=BF=D0=BD, 11 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 17:58, M=
ichael Dickens <
>>>>>>>>>> michael.dickens@ettus.com>:
>>>>>>>>>>
>>>>>>>>>>> Hi Ivan - I was out last week; here now for a few days. Please
>>>>>>>>>>> keep support@ettus.com on CC so that someone there can try to
>>>>>>>>>>> help you when I'm away.
>>>>>>>>>>>
>>>>>>>>>>> Here's a summary of the discussion with the Ettus R&D person I
>>>>>>>>>>> spoke with about accessing the GPIO via GRC: you have to create=
 a UHD USRP
>>>>>>>>>>> Source/Sink object, then you use it to access the underlying C+=
+ USRP
>>>>>>>>>>> object (via Python) to obtain the GPIO API. You can't access th=
e UHD GPIO
>>>>>>>>>>> API from RFNoC blocks; there is no USRP object to provide acces=
s.
>>>>>>>>>>>
>>>>>>>>>>> Are you still having issues with the FPGA creation? If so,
>>>>>>>>>>> please update me on where you're at and I'll do what I can to h=
elp. - MLD
>>>>>>>>>>> ---
>>>>>>>>>>> Michael Dickens
>>>>>>>>>>> Ettus Research Technical Support
>>>>>>>>>>> Email: support@ettus.com
>>>>>>>>>>> Web: https://ettus.com/
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> On Thu, May 7, 2020 at 7:38 AM Ivan Zahartchuk <
>>>>>>>>>>> adray0001@gmail.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Hello. Sorry to bother you so often. But I really want to
>>>>>>>>>>>> understand this board and firmware. I solved the problem with =
the fact that
>>>>>>>>>>>> I did not create an image for FPGA. The problem was that at st=
artup, the
>>>>>>>>>>>> rfnoc_ce_auto_inst_e31x.v configuration file is created, which=
 also tells
>>>>>>>>>>>> which blocks to compile for VIvado. But the next time you call
>>>>>>>>>>>> ./uhd_image_builder, this file is not replaced with a new one,=
 but the
>>>>>>>>>>>> rfnoc_ce_auto_inst_e310.v file is created, which does not part=
icipate in
>>>>>>>>>>>> further work. But I also had questions about the GPIO.
>>>>>>>>>>>>
>>>>>>>>>>>> =D0=B2=D1=81, 3 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 14:09, =
Ivan Zahartchuk <adray0001@gmail.com
>>>>>>>>>>>> >:
>>>>>>>>>>>>
>>>>>>>>>>>>> Hello. Your colleagues haven=E2=80=99t answered anything yet?=
 Tell me,
>>>>>>>>>>>>> could you generate firmware for RFNoC and drop it to me. Sorr=
y to ask a
>>>>>>>>>>>>> lot, I just can not test the error with generating a bit file=
 for FPGA
>>>>>>>>>>>>> differently.
>>>>>>>>>>>>>
>>>>>>>>>>>>> =D1=81=D1=80, 29 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 08:1=
1, Ivan Zahartchuk <
>>>>>>>>>>>>> adray0001@gmail.com>:
>>>>>>>>>>>>>
>>>>>>>>>>>>>> Thanks! I found out that the problem in the firmware comes
>>>>>>>>>>>>>> from applications for creating this firmware. After opening =
the firmware
>>>>>>>>>>>>>> using Vivado, I found in it the same FIR block that I did no=
t add there.
>>>>>>>>>>>>>> Perhaps this is due to the fact that I installed the wrong v=
ersion of
>>>>>>>>>>>>>> Vivado. Because I also don=E2=80=99t generate the dts file t=
hat is needed for
>>>>>>>>>>>>>> firmware. I installed Vivado 18.3 HL System Edition.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> =D1=81=D1=80, 29 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 00:=
12, Michael Dickens <
>>>>>>>>>>>>>> michael.dickens@ettus.com>:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Hi Ivan - Let me discuss your query with the Ettus R&D guy
>>>>>>>>>>>>>>> who handles gr-uhd. Hopefully he'll be able to clarify your=
 query. - MLD
>>>>>>>>>>>>>>> ---
>>>>>>>>>>>>>>> Michael Dickens
>>>>>>>>>>>>>>> Ettus Research Technical Support
>>>>>>>>>>>>>>> Email: support@ettus.com
>>>>>>>>>>>>>>> Web: https://ettus.com/
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> On Mon, Apr 27, 2020 at 7:59 PM Ivan Zahartchuk <
>>>>>>>>>>>>>>> adray0001@gmail.com> wrote:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> Unfortunately for all this time I have not come a step clo=
ser to solving my problems. I don=E2=80=99t know how to solve the problem w=
ith flashing fpga.
>>>>>>>>>>>>>>>> I even reinstalled ubuntu but it did not help. The only as=
sumption is that the board has its own memory that is not erased after over=
writing the SD card. But this is also doubtful.
>>>>>>>>>>>>>>>> In addition, I still didn=E2=80=99t get to switch to the G=
PIO through the RFNoC block and I am thinking about returning to version 3.=
14. But honestly I would like to deal with this version.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>

--000000000000cf4c0805addaf597
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-tlid-translation gmail-translation" l=
ang=3D"en"><span title=3D"">Hi there.</span> <span title=3D"">My problem is=
 that even after calibration I can clearly see the mirror channel on my USR=
P N 210 with SBX.</span> <span title=3D"" class=3D"gmail-">Maybe someone wi=
ll tell you how to solve this problem.</span> <span title=3D"" class=3D"gma=
il-">This problem is observed on several boards and different boards.</span=
></span></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">=D0=B2=D1=82, 16 =D0=B8=D1=8E=D0=BD. 2020 =D0=B3. =D0=B2 17:28, Mic=
hael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.dicke=
ns@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi Ivan - OK; so you got the GRC &lt;-&gt; GR &lt;-&=
gt; UHD &lt;-&gt; GPIO access to work? Well done!<div><br></div><div>As for=
 your next question about tuning times: the E313 is the same as an E310 in =
terms of the USRP part. Here&#39;s my understanding:</div><div><br></div><d=
iv>Tuning times if the frequencies do not require changing out a RX filter =
should be around 25 ms; jumping between RX filters should be more like 125 =
ms; we use a=C2=A0different &quot;RX filter&quot; for each different=C2=A0f=
requency=C2=A0range. These are -very- typical tuning times for the E31x ser=
ies; actually, this is true for most of our USRPs except the N3xy series wh=
ich are intentionally=C2=A0designed with fast frequency switching in mind (=
among other attributes).</div><div><br></div><div>In theory one could speed=
 up tuning via FPGA code. I&#39;m not an FPGA programmer, so I don&#39;t kn=
ow how to do this nor the complexity of doing so -- just that in theory it =
could be done for specific user needs.</div><div><br></div><div>I hope this=
 is useful! - MLD<br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div =
dir=3D"ltr">---</div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Tec=
hnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_bl=
ank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D=
"_blank">https://ettus.com/</a></div></div></div></div></div></div></div></=
div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 16, 2020 at 6:39 AM Ivan Zahart=
chuk &lt;<a href=3D"mailto:adray0001@gmail.com" target=3D"_blank">adray0001=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">=C2=A0 Hello. I nevertheless got to work and eq=
uipment and everything worked out for me. Gpio works. It turns out that in =
theory, you can connect to it through dev as well as to the gps receiver. I=
 have one more question for you. I plan to also use the E313 as a frequency=
 tunable scanning receiver. But as far as I was written before (and I was c=
onvinced of this myself) that the frequency tuning is slow due to the confi=
guration of the filters on the board. Tell me how can I get around this and=
 speed up the scan. I want to achieve a speed of at least 1ms at 50 MHz and=
 the frequency tuning itself in the E310 takes about 100 ms.=C2=A0=C2=A0<br=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>=D0=BF=D1=82, 29 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 23:28, Michael Dic=
kens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">mic=
hael.dickens@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hi Ivan - It was a crazy week for me; I st=
ill don&#39;t even have the required software=C2=A0installed; putting out s=
o many fires I can&#39;t count them any longer! I sincerely hope next week =
is less stressful, and I can make progress on getting things installed. Hav=
e you made any progress on your end? Cheers &amp; happy weekend again! - ML=
D<br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">---<=
/div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Technical Support<b=
r>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ett=
us.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_blank">https:/=
/ettus.com/</a></div></div></div></div></div></div></div></div></div></div>=
</div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, May 25, 2020 at 6:36 PM Ivan Zahartchuk &lt;<a href=3D"ma=
ilto:adray0001@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">=C2=A0 Hello. There are no changes so far. There is no way to get to t=
he equipment. Waiting for your feedback on the code. Have a nice weekend)))=
)=C2=A0=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">=D0=B2=D1=82, 19 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 00:19,=
 Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D=
"_blank">michael.dickens@ettus.com</a>&gt;:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">HI Ivan - Happy Monday! I hope=
=C2=A0you had a good weekend. I took an extra part day off on both ends, wh=
ich made for a lovely elongated time. I&#39;ll take a look at your code sho=
rtly; I&#39;m moving between computers, so I&#39;ll need to create the UHD =
3.15.0.0 + GR 3.7.14.0 Release=C2=A0+ gr-ettus master installs for testing =
this. Always a good time getting a new computer, but it does take time to s=
et it up reasonably well! Any updates on your end? - MLD<br clear=3D"all"><=
div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">---</div><div dir=3D"l=
tr">Michael Dickens<br>Ettus Research Technical Support<br>Email: <a href=
=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br>We=
b: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a><=
/div></div></div></div></div></div></div></div></div></div></div><br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, May 15, 2020 at 9:46 AM Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@g=
mail.com" target=3D"_blank">adray0001@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks for =
your support. The archive has a file for USRP E310 and for PC. For now, I&#=
39;m just sending a request via gnuradio using the slider. I just have not =
figured out get_gpio_attr but the fact that the values change there gives m=
e hope that this works.<br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 15 =D0=BC=D0=B0=D1=8F 2020 =D0=B3.=
 =D0=B2 00:09, Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.=
com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">That&#39;s some =
positive progress, Ivan! Do you have any code you can pass on to me to try?=
 I have a variety of USRPs around that should be usable with GPIO; doesn&#3=
9;t need to be an E310 specifically (that&#39;s what my notes tell me you&#=
39;re using ... yes?). I also have both UHD 3.15.0.0 and the 3.15.LTS branc=
h available for testing. - MLD<br clear=3D"all"><div><div dir=3D"ltr"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr">---</div><div dir=3D"ltr">Michael Dickens<br>Ettus=
 Research Technical Support<br>Email: <a href=3D"mailto:support@ettus.com" =
target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.co=
m/" target=3D"_blank">https://ettus.com/</a></div></div></div></div></div><=
/div></div></div></div></div></div><br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 14, 2020 at 3:50 PM Ivan=
 Zahartchuk &lt;<a href=3D"mailto:adray0001@gmail.com" target=3D"_blank">ad=
ray0001@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div id=3D"gmail-m_-365934121322736913gma=
il-m_3053749019241539358gmail-m_838044723809316699gmail-m_-3022953311440817=
250gmail-m_2535866332927259255gmail-m_-1151591874624397141gmail-m_-16680256=
80000192425gmail-m_-8472392558182387111gmail-tw-target-text-container" styl=
e=3D"overflow:hidden;outline:currentcolor none 0px"><pre id=3D"gmail-m_-365=
934121322736913gmail-m_3053749019241539358gmail-m_838044723809316699gmail-m=
_-3022953311440817250gmail-m_2535866332927259255gmail-m_-115159187462439714=
1gmail-m_-1668025680000192425gmail-m_-8472392558182387111gmail-tw-target-te=
xt" dir=3D"ltr" style=3D"unicode-bidi:isolate;line-height:36px;background-c=
olor:transparent;border:medium none;padding:2px 0.14em 2px 0px;overflow:hid=
den;width:277px;white-space:pre-wrap"><span lang=3D"en"><font face=3D"georg=
ia, serif">Hello. Yes, I have advanced in this direction. Indeed, I figured=
 out a bit with GPIO. The idea is to initialize usrp_source earlier than th=
e RFNoC block (I don=E2=80=99t know what this is related to), and then I av=
oid the error and in theory I have the same access to gpio. But when callin=
g the get_gpio_banks command. =E2=80=9CFP0=E2=80=9D is returned to me and n=
ot =E2=80=9CINTO=E2=80=9D; I have not yet carried out any further experimen=
ts in connection with quarantine.</font></span></pre></div><div id=3D"gmail=
-m_-365934121322736913gmail-m_3053749019241539358gmail-m_838044723809316699=
gmail-m_-3022953311440817250gmail-m_2535866332927259255gmail-m_-11515918746=
24397141gmail-m_-1668025680000192425gmail-m_-8472392558182387111gmail-tw-ta=
rget-rmn-container" style=3D"overflow:hidden;outline:currentcolor none 0px"=
><pre id=3D"gmail-m_-365934121322736913gmail-m_3053749019241539358gmail-m_8=
38044723809316699gmail-m_-3022953311440817250gmail-m_2535866332927259255gma=
il-m_-1151591874624397141gmail-m_-1668025680000192425gmail-m_-8472392558182=
387111gmail-tw-target-rmn" dir=3D"ltr" style=3D"unicode-bidi:isolate;backgr=
ound-color:transparent;border:medium none;padding:0px 0.14em 0px 0px;margin=
-top:0px;margin-bottom:0px;font-family:inherit;overflow:hidden;width:277px;=
white-space:pre-wrap;font-size:16px;line-height:24px;color:black"></pre></d=
iv><div style=3D"display:flex;width:309px;height:48px"><div style=3D"displa=
y:flex;margin:0px 11px"><div><span style=3D"outline:currentcolor none 0px;d=
isplay:inline-block"><div style=3D"opacity:0.74;color:rgb(0,0,0);font-size:=
12px;font-style:italic;height:26px;line-height:26px;min-width:26px;padding:=
11px"><span style=3D"display:inline-block;vertical-align:text-bottom;paddin=
g-left:5px"></span><span style=3D"display:inline-block;word-break:break-all=
"></span></div></span></div></div><div id=3D"gmail-m_-365934121322736913gma=
il-m_3053749019241539358gmail-m_838044723809316699gmail-m_-3022953311440817=
250gmail-m_2535866332927259255gmail-m_-1151591874624397141gmail-m_-16680256=
80000192425gmail-m_-8472392558182387111gmail-tw-tmenu" style=3D"display:inl=
ine-block;line-height:normal;white-space:nowrap"><span style=3D"display:inl=
ine-block"><span style=3D"display:inline-block"></span></span><span id=3D"g=
mail-m_-365934121322736913gmail-m_3053749019241539358gmail-m_83804472380931=
6699gmail-m_-3022953311440817250gmail-m_2535866332927259255gmail-m_-1151591=
874624397141gmail-m_-1668025680000192425gmail-m_-8472392558182387111gmail-t=
w-spkr-button" style=3D"display:inline-block;height:48px;color:rgba(0,0,0,0=
.54);overflow:hidden;width:48px;outline:currentcolor none 0px"><span title=
=3D"=D0=A1=D0=BB=D1=83=D1=88=D0=B0=D1=82=D1=8C =D0=BF=D0=B5=D1=80=D0=B5=D0=
=B2=D0=BE=D0=B4" style=3D"display:inline-block;height:26px;line-height:24px=
;width:26px;border:1px solid transparent;padding:10px"></span></span></div>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">=D1=87=D1=82, 14 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 22:29, Michae=
l Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank=
">michael.dickens@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Hi Ivan - I&#39;m glad to hear you go=
t the firmware / FPGA images sorted out. That&#39;s really quite something!=
 I&#39;ll need to do some playing around with how to do GPIO in UHD C++. I&=
#39;m confident=C2=A0there&#39;s a way ... just need the right &quot;specia=
l sauce&quot; if you know what I mean. Maybe you&#39;ve made progress on th=
is end? - MLD<br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr">---</div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Techni=
cal Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank=
">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_b=
lank">https://ettus.com/</a></div></div></div></div></div></div></div></div=
></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, May 11, 2020 at 4:04 PM Ivan Zahartchuk &lt;=
<a href=3D"mailto:adray0001@gmail.com" target=3D"_blank">adray0001@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">If I understand you correctly, then I need to create anot=
her block uhd
=C2=A0<div>self.uhd_usrp_source =3D uhd.usrp_source (
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;,&quot;. join ((&quot=
;&quot;, &quot;&quot;)),
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uhd.stream_args (
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cpu_format =3D &quot;fc32&q=
uot;,
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0channels =3D range (1),
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0),
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0)=C2=A0</div><div>so I crea=
ted it. But I don=E2=80=99t understand how it works since I don=E2=80=99t c=
onnect it anywhere and I get an error</div><div>=C2=A0[WARNING] [RFNOC] [le=
gacy compat] Not enough FIFO ports to connect, not all TX sinks will be con=
nected
[WARNING] [RFNOC] [legacy_compat] No DDCs detected. You will only be able t=
o receive at the radio frontend rate.
[WARNING] [RFNOC] [legacy_compat] No DUCs detected. You will only be able t=
o transmit at the radio frontend rate.
[WARNING] [RFNOC] Assuming max packet size for 0 / Radio_0
thread [thread-per-block [0]: &lt;block uhd_rfnoc_FIFO (7)&gt;]: RuntimeErr=
or: On node 0 / FIFO_0, output port 0 is already connected.</div><div>=C2=
=A0If somewhere there are examples of how to get to gpio correctly, I would=
 be very grateful if you would provide them to me. I figured out the FPGA f=
irmware and now the only problem is gpio.</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 11 =D0=BC=D0=
=B0=D1=8F 2020 =D0=B3. =D0=B2 17:58, Michael Dickens &lt;<a href=3D"mailto:=
michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&=
gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Hi Ivan - I was out last week; here now for a few days. Please keep <=
a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a>=
 on CC so that someone there can try to help you when I&#39;m away.<div><br=
></div><div>Here&#39;s a summary of the discussion with the Ettus R&amp;D p=
erson I spoke with about accessing the GPIO via GRC: you have to create a U=
HD USRP Source/Sink object, then you use it to access the underlying C++ US=
RP object (via Python) to obtain the GPIO API. You can&#39;t access the UHD=
 GPIO API from RFNoC blocks; there is no USRP object to provide access.</di=
v><div><br></div><div>Are you still having issues with the FPGA creation? I=
f so, please update me on where you&#39;re at and I&#39;ll do what I can to=
 help. - MLD</div><div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
---</div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Technical Suppo=
rt<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support=
@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_blank">htt=
ps://ettus.com/</a></div></div></div></div></div></div></div></div></div></=
div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, May 7, 2020 at 7:38 AM Ivan Zahartchuk &lt;<a h=
ref=3D"mailto:adray0001@gmail.com" target=3D"_blank">adray0001@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hello. Sorry to bother you so often. But I really want to und=
erstand this board and firmware. I solved the problem with the fact that I =
did not create an image for FPGA. The problem was that at startup, the rfno=
c_ce_auto_inst_e31x.v configuration file is created, which also tells which=
 blocks to compile for VIvado. But the next time you call ./uhd_image_build=
er, this file is not replaced with a new one, but the rfnoc_ce_auto_inst_e3=
10.v file is created, which does not participate in further work. But I als=
o had questions about the GPIO.<br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=81, 3 =D0=BC=D0=B0=D1=8F 2020 =
=D0=B3. =D0=B2 14:09, Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@gmail=
.com" target=3D"_blank">adray0001@gmail.com</a>&gt;:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello. Your colleague=
s haven=E2=80=99t answered anything yet? Tell me, could you generate firmwa=
re for RFNoC and drop it to me. Sorry to ask a lot, I just can not test the=
 error with generating a bit file for FPGA differently.<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 29=
 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 08:11, Ivan Zahartchuk &lt;<a href=
=3D"mailto:adray0001@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&g=
t;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Thanks!=C2=A0I found out that the problem in the firmware comes from a=
pplications for creating this firmware. After opening the firmware using Vi=
vado, I found in it the same FIR block that I did not add there. Perhaps th=
is is due to the fact that I installed the wrong version of Vivado. Because=
 I also don=E2=80=99t generate the dts file that is needed for firmware. I =
installed Vivado 18.3 HL System Edition.<span style=3D"background-color:rgb=
(248,249,250);font-family:inherit;font-size:28px;white-space:pre-wrap"></sp=
an></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">=D1=81=D1=80, 29 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 00:12, Michael =
Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">=
michael.dickens@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hi Ivan - Let me discuss your query wit=
h the Ettus R&amp;D guy who handles gr-uhd. Hopefully he&#39;ll be able to =
clarify your query. - MLD<br clear=3D"all"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div dir=3D"ltr">---</div><div dir=3D"ltr">Michael Dickens<br>Ettus Re=
search Technical Support<br>Email: <a href=3D"mailto:support@ettus.com" tar=
get=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/"=
 target=3D"_blank">https://ettus.com/</a></div></div></div></div></div></di=
v></div></div></div></div></div><br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 27, 2020 at 7:59 PM Ivan Za=
hartchuk &lt;<a href=3D"mailto:adray0001@gmail.com" target=3D"_blank">adray=
0001@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><pre id=3D"gmail-m_-365934121322736913gmail-=
m_3053749019241539358gmail-m_838044723809316699gmail-m_-3022953311440817250=
gmail-m_2535866332927259255gmail-m_-1151591874624397141gmail-m_-16680256800=
00192425gmail-m_-8472392558182387111gmail-m_-7401521056776547995gmail-m_404=
9573063320729433gmail-m_-2686627051027188575gmail-m_7853533297241329503gmai=
l-m_9135370524100431939gmail-m_-8884878915660599770gmail-m_4976518520255204=
370gmail-m_2907319175527483697gmail-tw-target-text" style=3D"text-align:lef=
t" dir=3D"ltr"><span style=3D"font-family:georgia,serif"><span lang=3D"en">=
Unfortunately for all this time I have not come a step closer to solving my=
 problems. I don=E2=80=99t know how to solve the problem with flashing fpga=
. <br>I even reinstalled ubuntu but it did not help. The only assumption is=
 that the board has its own memory that is not erased after overwriting the=
 SD card. But this is also doubtful. <br>In addition, I still didn=E2=80=99=
t get to switch to the GPIO through the RFNoC block and I am thinking about=
 returning to version 3.14. But honestly I would like to deal with this ver=
sion.</span></span></pre></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000cf4c0805addaf597--
--000000000000cf4c0c05addaf599
Content-Type: image/png; name="Screenshot from 2020-08-27 15-11-36.png"
Content-Disposition: attachment; 
	filename="Screenshot from 2020-08-27 15-11-36.png"
Content-Transfer-Encoding: base64
Content-ID: <f_kecryg6g0>
X-Attachment-Id: f_kecryg6g0

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
cdXVreJrmj3lvHoMG6H2s+Jkd/ORX8FyqlMhMHkjpr+cjLS1wusLtCBHf73+/it6cvQZyaeAyr80
Q4/XCJBVVhVp30vNRzfXTO9uerpmWt01rfLOnVtuCyaqTZ2Jsrp5Kke+YJWOekL/W9VNbSv5pb7j
HSf1x9pZem12fx06Y1eWXEGq0OI9fdSzhGzJcZmYfPAIAAAgAElEQVTN/aJ+nNhd4385rSyB5dX0
nQUa3SW5x4zFTy1e7a/YzuPUY3R9Nf6ku6ZO/lsvjeiv5lNPKt7FU9nz5FOp5vmvD//nVVs9ni+p
6QP2KLp/axVxQq8R7+gGisraXR9NsCm4ez+Vu9pxKGtlPdHMX00mTpa8GqtzpaR4yaVocQVbvtfs
8V8o5MkS8nW7ogMnrnfhsfqGKyLfZX02aYS+8n5Evmd+15VirVS/Qgc9X+FLvdGvvXIee071iueU
5fQf+imhlDo2Db/DZ0S6qFDxEGWZNl+TPi6vZyvmlXviPh25fD1GsGTPqRzGKi35eqPqPlNZfje9
D/BIJVY487t+3LBefyRe1Km/9mrd3E/1xbpzKtVzmgZEpxZrXtb2r6frt5xlVNTXVRf/2KQD56Uc
ObNfCy0cfy/UxPGF9FiZAFn/XKjxw9cpW8OJeqyAVZKPcuWw6MTG+fru53A1DgpRaF6HZk1/V3P8
myjYx6rTf8TJkSJSdSnUUh1qjVOfAQOU5UIVvVk3V0Zj2vtHtrrqEhOqZhO6qUPW3oqpXljeCSf1
2+9uioqpryJpnE8uHtqhDevPSZfP6PAvm/TdZzO1+HBBdZg0TE1zWyS5qGib7npsWme90XGQEl96
RAWv7NJnIyfo15BOGvlIdllSHYz29izZ099vmSH99btJ4q9aMHWL3EqEyt89QYfX/KQ4eStXjqtn
QENn10zR6GnnVKmIu46unqyR8+2qPORJlbBJFs+cyulu1+bvvtS2iq1VMp1jX7Iod6MYNRnRXqN6
b1VciefVsPB/HBnZwtVlVHcte2KMYh75S+07NlOVoFyyxZ/UHzs26Gj4y+rXsKO6R3+pfn2fk//A
LorOfVobpwzVjNORGtg56vr5+XZut21tBVQyPJvGzh+nsVUcquJxQodcyqll1fTOgVbl9M0h4+Bq
zVvRXIF1Ct34vnp6dWZTcMkwuc34XG9PidAz4Vb9cyybajwWeWPbvWrrhS4l1eTdrurq019Pl/PU
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
xiGvyA+H5uRpn1ySb710L58MBgAASHL++edn0aJFHXlvx2UAAABMzcaf5wN/95gcsN8hOe6sK3Nv
Zdcs+n9vzdNrJjWTpC97v/D0vGze9OSeC/Oesy7JvW0p8HZUV+WHZ743F69OZix4RU4/UVITAACg
CGrcFAgAAAC2r3rvXdMIwDQAACAASURBVNk4Z25m99+dvt3n56mvOjv/8c/7p66bt+5wVN7y8dfk
J6+5Oc993sEZaHVh61GZk0Nf8LI866oLcsD/n737jK6iXPswfu2dhJBOAoTQa+hVEVGwYwWs2FAP
6qse7NgRFXvB3rEde2/YzrFhV7AgigJSBUFpIYQUIKTseT9QBAwIGtwJXL+1ZmmmPffM3uTD/HM/
c/9QdqoZ7YIkSZIkSeBUtJIkSZKkqAsIghChP2vw/KcFAUEoRFUrS5IkSZKiyaloJUmSJEnbsSoY
agIYakqSJElSlWKwKUmSJEmSJEmSJKnKM9iUJEmSJEmSJEmSVOUZbEqSJEmSJEmSJEmq8gw2JUmS
JEmSJEmSJFV5BpuSJEmSJEmSJEmSqjyDTUmSJEmSJEmSJElVnsGmJEmSJEmSJEmSpCrPYFOSJEmS
JEmSJElSlWewKUmSJEmSJEmSJKnKM9iUJEmSJEmSJEmSVOUZbEqSJEmSJEmSJEmq8gw2JUmSJEmS
JEmSJFV5BpuSJEmSJEmSJEmSqjyDTUmSJEmSJEmSJElVnsGmJEmSJEmSJEmSpCovNtoFqHqZM2cO
y5cvZ+nSpdEupVqoVasWSUlJNG7cONqlSJIkSZIkSZIkVWsGm9psc+bMoby8nPbt20e7lGpl5syZ
zJkzhyZNmkS7FEmSJEmSJEmSpGrLYFObbdmyZbRv354gCKJdSrXSokULJk+eHO0yJEmSJEmSJEmS
qjWDTW22/Px8Q82/KD8/P9olSJIkSZIkSZIkVWsGm9oiBpuSJEmSJEmSJEmKhmoVbH733Xdb3PmW
lpZGt27dtlJFkiRJkiRJkiRJkv4J1SrYzM/Pp3v37lt0zLhx47ZSNVVJOT+/PIzhn3XmmjuOo0W4
4r0ic9/n7gfGk33GRfRtuJGdNoNdm1smFApFuwRJkiRJkiRJkqRqr1oFm7CqA1MbijB/7CuM+jyZ
oZvIHMtmvsEdd47ltIEX0rfhXxspCIJtLtgsLy4gvziOtFoJxES7GEmSJEmSJEmSJFXor7ftbQNK
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
AWrGqo2WQUBQvTMQB9Xb2VZeSfWunFm7ne0+4bG+8LfPde88W/3XU9dvdv5u7/PVzrPsM/Lz17G5
DFpmdqF11fd8v/1/FzaDIKBLly4/+VhJkiRJkiRJkiQdOA0cNiGcMphhR0ZYcP80VvY6i9O61NTL
UEuGjBtOzOv3MbsoicFDj6j/+Zr703wQl//mSDY99CvOvmk2ry9YzKJ3/sLKryN7H3NZTzY+cCmX
3vUyuYvm89QtF3Dt3BiGXHkhPWIBmtD31FNIXTGNu3LTGTkinZiYQxl5SjeWT7ubhYk5jD2+Zrlm
pJjnLuxGp76TWVC2/ynuHf2a07rNN8wa04VDu3Tn2JOv4Mmyodz79A0c1ziGzNEXcnzRFCY89g0n
TZxC9seTye6cQkqX8eS2SiepKQRN+3PLE7+nW/5khh2VRa9hl/HE6sraValBEEvXi+/murSXuPq2
BXy/+4valY97zWvnX4QzfslN4w/hmVOPoEO7NAbeX0J6xwRCtSEv2Oc3dYXbvc+1e+VlUwbWdz0/
+E3d49dMgariXO48P5suqal0O30O7a6+ntNTQ/VGyAP9kiRJkiRJkiRJ0oEVKi0tbeAKE2H9/cPp
e8MqBkxbyhNnttm9+WvFe0zqm8ODVRfy3/l3kP2Lms+3Psu4rhMI3VvEE6c1Z8f8yzn87CImLnmV
f+sYBgK2PHUWmVc2ZtraRxnTDAi2sGz2bUydPpe8z0qoiImjbVpXep13O7PGH0UsQKSEvOk3ccuD
r7N8YwXxhx7H2IlTuP60TJrtmlP1av44oD9/anYzea+Op1MYIp/PYNQxkyi5fD4LJvWoGauYZy8a
xDWrTmH221Ppf0jdVz9v3jyGDh1KpM7nVOr/qnA4zBtvvMGgQYMaeiqSJEmSJEmSJEkHhSgIm/+/
GTYPToZNSZIkSZIkSZKkAyu2oScg3L70IOT/U5IkSZIkSZIk6cAybEYBw+bBx/+nJEmSJEmSJEnS
gWXYbGCJiYlEIhFCoZDb0R4kwuEwkUiExMTEhp6KJEmSJEmSJEnSQcOw2cDi4+NZtWoVWVlZhEKh
hp6ODoBIJMLq1auJj49v6KlIkiRJkiRJkiQdNEKlpaXumdnA1qxZw9atWyktLW3oqegASExMJD4+
noyMjIaeiiRJkiRJkiRJ0kHDsClJkiRJkiRJkiQp6oUbegKSJEmSJEmSJEmStD+GTUmSJEmSJEmS
JElRz7ApSZIkSZIkSZIkKeoZNiVJkiRJkiRJkiRFPcOmJEmSJEmSJEmSpKhn2JQkSZIkSZIkSZIU
9QybkiRJkiRJkiRJkqKeYVOSJEmSJEmSJElS1DNsSpIkSZIkSZIkSYp6hk1JkiRJkiRJkiRJUc+w
KUmSJEmSJEmSJCnqGTYlSZIkSZIkSZIkRT3DpiRJkiRJkiRJkqSoZ9iUJEmSJEmSJEmSFPUMm5Ik
SZIkSZIkSZKinmFTkiRJkiRJkiRJUtQzbEqSJEmSJEmSJEmKeoZNSZIkSZIkSZIkSVHPsClJkiRJ
kiRJkiQp6hk2JUmSJEmSJEmSJEU9w6YkSZIkSZIkSZKkqGfYlCRJkiRJkiRJkhT1DJuSJEmSJEmS
JEmSop5hU5IkSZIkSZIkSVLUM2xKkiRJkiRJkiRJinqGTUmSJEmSJEmSJElRz7ApSZIkSZIkSZIk
KeoZNiVJkiRJkiRJkiRFvf8BBDm84Z3DOUsAAAAASUVORK5CYII=
--000000000000cf4c0c05addaf599
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000cf4c0c05addaf599--

