Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C3B7B2F8A
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 11:49:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E0FB38530B
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 05:49:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695980990; bh=e7JDtM3hCDzm3UwxgdrXOarQyj2p/UQSvf8T6YlT+B4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pg9Zz5taNSuJu966hPZb6DgW2TQGLeVJveDUOVHTJr97ussCKLModhxXHhozz6uU/
	 hpKTgN9ZWPa6RRnIU1PeTwZ4brhfrXzaPcV3EF/ECS+cTPPyvKAo+gxvDI+KE5HQLb
	 z1gzRcvS3LD6UAOPw+r5sG8L72Rlh7oCwVKNMUSdguBrugHa1ZqiKsxFKa/duGi66+
	 k1xP08htq2BI+JeHZwxy00B30+anmR+nTO+fhO136S3GHYof4Wzy5oyxJviBZp0+xC
	 WstD+YEHCVb6/h4A2axwmixOg+xddBGh77B+n+gBRk4mEOS4uqGCcAVMN5aQk3ivTo
	 NhO84y8v8NSng==
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id AB9C8385302
	for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 05:49:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ww4KTP+7";
	dkim-atps=neutral
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-32325534cfaso9148324f8f.3
        for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 02:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695980986; x=1696585786; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUCQyx9mTjggBJR/t0fK9AbGvRDgi5Ej+ZmSBpNufPI=;
        b=ww4KTP+7P8t2f2vhiqfIvE0f04+98BKbtrm7EsfWM54H/FQdteMh0nXDNHJ8jxBqj9
         U7lUR5n/nIIRtAfnTIVLQqO44PAIZCDtQp51L/058CyTQiw+9bRAvg/6nZK0KMn4EGzI
         fVX4HDbrwlXKPgdL9BjWN8l1MewBTsHSNYEDzXZLiw/KeJTnVjt7N2G9djIYIMTi45ZN
         0xrVu1bjLIvzP8WEGH5NhOXlGaxaV0dM6t4xt8SUtM1p5NPo50L0pbR7nqljYkdJQupJ
         7vI1iU7HoeAAibJGpw001NHtA1NL+DG6pxN3oGDncz0vUpd/NkNJA6wC61gMvvapGW2x
         vedQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695980986; x=1696585786;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jUCQyx9mTjggBJR/t0fK9AbGvRDgi5Ej+ZmSBpNufPI=;
        b=lpVV18AIMss8TGn1AXlyW8f936i7P8sfgNvk1loUtdBrGFyT1WDhW3ltqNs5KcRIx2
         0cPTktgB173tbFbXPnXrFLUTDmiBIHq/RGATSPjRAtUyyM+TZ/YGzHq1GXnQGNs3UbyI
         MeFSwf5tnX5RLDux54iPN09h+wOXlZDoh8cMm66rrjsFUXbI+gP1pwH/j212G/FZi1hu
         xWiPcB8MmL3gFg/QqJ6bjJiZ5QDoOt0EBQUYkRALoSHnvol1zJ6oEp094ac+OJ3+eA44
         vBwcpC6NvHg8IqpAh+QiTerHty0x4tRY9ToyDII/sg0Fh9cPXHZGR011MjAGHyFWrNNm
         EeJg==
X-Gm-Message-State: AOJu0Yzof/Nfyybmgv7fqmjfY35SbOsZDMcpzEfVlUbeahXvBkQOcu7K
	N674o6Oj4rhWwdIJgwYKM3bKSMzg9N8TUgAU4pQMIg==
X-Google-Smtp-Source: AGHT+IHSaJZMYQRk0MD9QMTdAhK3DtFnCvwHy14W6aBOsaNpljFN9PXpKG1LJsYJq/BPQJDuoE9z3w==
X-Received: by 2002:a5d:4a43:0:b0:31f:9bd6:e8a8 with SMTP id v3-20020a5d4a43000000b0031f9bd6e8a8mr4042590wrs.11.1695980986014;
        Fri, 29 Sep 2023 02:49:46 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3840:2100:10fc:1619:bea3:90d1? ([2001:9e8:3840:2100:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id bt14-20020a056000080e00b003200c918c81sm14762837wrb.112.2023.09.29.02.49.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 02:49:45 -0700 (PDT)
Message-ID: <b60e3542-d9f7-c881-d6c7-b978d0168285@ettus.com>
Date: Fri, 29 Sep 2023 11:49:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6BD824DC-9003-4D17-9008-1FFF11B7D4E8@stanford.edu>
 <CAB__hTQezo8LVmsi=W929OP6ML6qSnRV1oNff7HuV+Es8vyv3g@mail.gmail.com>
 <CAB__hTTM2CmUd5sNOxH-hT3xJNaKBBS91hJhH9j99vqrz0H1Sg@mail.gmail.com>
 <FDC8C222-43F0-46C2-AEA0-13EA7896D747@stanford.edu>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <FDC8C222-43F0-46C2-AEA0-13EA7896D747@stanford.edu>
Message-ID-Hash: EO32K4PVPB2H5L346BFAUKETPPPAMXJH
X-Message-ID-Hash: EO32K4PVPB2H5L346BFAUKETPPPAMXJH
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Appears Laggy Using UHD 4.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EO32K4PVPB2H5L346BFAUKETPPPAMXJH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7133451815845518052=="

This is a multi-part message in MIME format.
--===============7133451815845518052==
Content-Type: multipart/alternative;
 boundary="------------3hdg14Y5m4uUteyXOkIQ45yT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3hdg14Y5m4uUteyXOkIQ45yT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Anna,

On 28.09.23 23:49, Anna Lamkin Broome wrote:
> Hi Marcus,
>
> After a bit more testing, I am increasingly convinced that the applicat=
ion begins to=20
> hang only after encountering a late command error for the first time. I=
f this is indeed=20
> the case, the time it takes from start of application to hanging depend=
s on the number=20
> of samples transmitted/received and the PRF. Basically it happens faste=
r (on the order=20
> of 1s to low 10s of seconds) at higher duty cycles and may not happen a=
t all at lower=20
> duty cycles. The tests I am currently doing attempt collect 100,000 pul=
ses worth of data=20
> and should finish in about 50 seconds given the specified PRF. If I slo=
w the PRF down,=20
> the late command errors don=E2=80=99t happen and the application never =
hangs.
Yeah, that seems to be a relatively solid indication.
> Thanks for the information about the warnings being added in UHD 4.0=E2=
=80=94that certainly=20
> explains why I wasn=E2=80=99t seeing them before. When you say that "in=
 UHD 4 RFNoC is much more=20
> tightly integrated with the host-side UHD=E2=80=9D what do you mean by =
that? Forgive me if this=20
> is an overly broad question, I=E2=80=99m not all that familiar with FPG=
A architecture.
Always appreciated here to ask such questions! So, I'm myself not too fam=
iliar with the=20
UHD4/RFNoC4 internals myself. But: whereas RFNoC started out as "added fu=
nctionality" on=20
UHD 3, where it just "something between the radio controller and the stre=
amers going to=20
the host PC", UHD 4 is pretty consequent in that the FPGA image is made o=
f RFNoC=20
components. Cleaner, but also means that the host has more insight into w=
hat happens.
>
> I can get exact numbers next week (no longer in lab today), but I think=
 I was able to=20
> run the benchmark_rate example in UHD 3.15 in full duplex at around 10-=
20 MHz sample=20
> rates with no major problems (over 1GbE), whereas in UHD 4.15 a 20 MHz =
sample rate=20
> causes the control op error within the first couple of seconds.

Ah, so, rather low rates, and no 10 GbE!

Gotta think about that.

Best,
Marcus

>
> Hi Rob=E2=80=94Yes, I totally agree that the Replay block is probably v=
ery useful to us and may=20
> ultimately be the way we end up going. I don=E2=80=99t think it was ava=
ilable in the standard=20
> release FPGA image until UHD 4.1 or 4.2 and my thought was to get our e=
xisting code=20
> working with the newer UHD prior to going down that path. Part of the u=
pside of our=20
> application is that it can be run on multiple SDRs in the Ettus family.=
 So the other=20
> reason we haven=E2=80=99t gone full steam into the Replay block is a de=
sire to see if we could=20
> get the job done well enough with our non-RFNoC application and maintai=
n the exact same=20
> code minus a configuration file for running on the X310 and B205mini.
>
> Thanks for pointing out the potential difference in FIFO lengths betwee=
n the UHD=20
> releases. I=E2=80=99ll look into that more.
>
> Best,
> Anna
>
>> On Sep 28, 2023, at 12:31 PM, Rob Kossler <rkossler@nd.edu> wrote:
>>
>> One more thing.=C2=A0 One difference between 3.15 and 4.xx might be th=
e length of FIFOs on=20
>> the FPGA for buffering Tx data arriving from the host.=C2=A0 If the 4.=
xx buffers are=20
>> smaller, then it may be more likely for a "glitch" to occur if your ho=
st is a bit=20
>> "bursty" when providing the samples.=C2=A0 If this is true, then perha=
ps you could build a=20
>> custom X310 image with larger buffers.
>>
>>
>> On Thu, Sep 28, 2023 at 3:26=E2=80=AFPM Rob Kossler <rkossler@nd.edu> =
wrote:
>>
>>     Hi Anna,
>>     I do not have a response to your direct question regarding perform=
ance. However, I
>>     have a suggestion that may make the performance irrelevant.=C2=A0 =
The=C2=A0 X310 image comes
>>     with a Replay block that accesses the DRAM chip for storage. Given=
 that you are
>>     sending a repeatable waveform, you should have plenty of room to s=
tore this ahead
>>     of time and playout from the Replay block. This is exactly how I d=
o all of my radar
>>     testing. While it will take some effort to make your application p=
lay nice with the
>>     Replay block, it will be worth it because you will never fight "La=
te" or "Underrun"
>>     again.=C2=A0 =C2=A0(Note that there may be a RAM I/O bottleneck if=
 trying to play both
>>     channels simultaneously=C2=A0from the Replay block at 200 MS/s, bu=
t one channel will be
>>     no problem).
>>     Rob
>>
>>     On Thu, Sep 28, 2023 at 1:55=E2=80=AFPM Anna Lamkin Broome <abroom=
e@stanford.edu> wrote:
>>
>>         Hello,
>>
>>         We are developing a radar application built on the Ettus SDR p=
latforms. Our
>>         code runs well on an X310 with UBX160 daughterboards using UHD=
 3.15 and a
>>         B205mini-i using UHD 4.1 and another B205mini-i using UHD 4.4.=
 We want to take
>>         advantage of recent power calibration utilities and other feat=
ures not present
>>         in UHD 3.15, so I am now trying to run our code on an X310 wit=
h the most recent
>>         UHD 4.5 release.
>>
>>         When running our code on the X310 with UHD 4.5 I get warnings =
for both radio 0
>>         and radio 1 (we transmit on one UBX160 and receive on the othe=
r): *[WARNING]
>>         [0/Radio#0] *Attempting to set tick rate to 0. Skipping. The c=
ode uses timed
>>         commands to transmit and receive samples from a frequency-swep=
t pulse at a
>>         consistent interval (pulse repetition frequency). Our applicat=
ion requires a
>>         high PRF and we can tolerate some late command errors, but nee=
d to log them for
>>         post-processing. Using UHD 4.5, the behavior is not as expecte=
d in that
>>         something seems to be hanging. At some point during the proces=
s=E2=80=94I think once we
>>         first hit a late command error=E2=80=94the timing becomes very=
 off from what it should
>>         be, and eventually, samples stop being transmitted or received=
 and the
>>         application just hangs. Sometimes when killing the application=
, I get this
>>         warning: *[WARNING] [RFNOC::GRAPH::DETAIL] *Cannot forward act=
ion tx_event from
>>         0/Radio#0:INPUT_EDGE:0, no neighbour found! These warnings do =
not happen when
>>         running the application with UHD 3.15.
>>
>>         I have tried running the benchmark_rate example with the same =
host computer and
>>         X310 running UHD 3.15 and UHD 4.5. With UHD 4.5 and high sampl=
e rates, I get an
>>         error: uhd::op_timeout: RfnocError: OpTimeout: Control operati=
on timed out
>>         waiting for ACK, which stops the test before it begins running=
. Lower sample
>>         rates in UHD 4.5 run, but produce more errors (including seque=
nce errors) than
>>         the same set up running UHD 3.15.
>>
>>         I have tried refreshing the FPGA image for UHD 4.5 with no cha=
nge in behavior.
>>         The behavior is replicable using multiple host computers (Mac =
and Ubuntu). If
>>         anyone has suggestions on debugging steps, or potential reason=
s why UHD 4.5
>>         would seem laggy compared to UHD 3.15 (despite running well wi=
th UHD 4.x on the
>>         B205mini), I would greatly appreciate them. I suspect it may h=
ave something to
>>         do with the command queue and how it evolves after getting beh=
ind.
>>
>>         Thanks,
>>         Anna Broome
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------3hdg14Y5m4uUteyXOkIQ45yT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Anna,<br>
    </p>
    <div class=3D"moz-cite-prefix">On 28.09.23 23:49, Anna Lamkin Broome
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:FDC8C222-43F0-46C2-AEA0-13EA7896D747@stanford.edu">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      Hi Marcus,=C2=A0
      <div><br>
      </div>
      <div>After a bit more testing, I am increasingly convinced that
        the application begins to hang only after encountering a late
        command error for the first time. If this is indeed the case,
        the time it takes from start of application to hanging depends
        on the number of samples transmitted/received and the PRF.
        Basically it happens faster (on the order of 1s to low 10s of
        seconds) at higher duty cycles and may not happen at all at
        lower duty cycles. The tests I am currently doing attempt
        collect 100,000 pulses worth of data and should finish in about
        50 seconds given the specified PRF. If I slow the PRF down, the
        late command errors don=E2=80=99t happen and the application neve=
r
        hangs. <br>
      </div>
    </blockquote>
    Yeah, that seems to be a relatively solid indication.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:FDC8C222-43F0-46C2-AEA0-13EA7896D747@stanford.edu">
      <div>Thanks for the information about the warnings being added in
        UHD 4.0=E2=80=94that certainly explains why I wasn=E2=80=99t seei=
ng them before.
        When you say that "in UHD 4 RFNoC is much more tightly
        integrated with the host-side UHD=E2=80=9D what do you mean by th=
at?
        Forgive me if this is an overly broad question, I=E2=80=99m not a=
ll that
        familiar with FPGA architecture. <br>
      </div>
    </blockquote>
    Always appreciated here to ask such questions! So, I'm myself not
    too familiar with the UHD4/RFNoC4 internals myself. But: whereas
    RFNoC started out as "added functionality" on UHD 3, where it just
    "something between the radio controller and the streamers going to
    the host PC", UHD 4 is pretty consequent in that the FPGA image is
    made of RFNoC components. Cleaner, but also means that the host has
    more insight into what happens. <br>
    <blockquote type=3D"cite"
      cite=3D"mid:FDC8C222-43F0-46C2-AEA0-13EA7896D747@stanford.edu">
      <div><br>
      </div>
      <div>I can get exact numbers next week (no longer in lab today),
        but I think I was able to run the benchmark_rate example in UHD
        3.15 in full duplex at around 10-20 MHz sample rates with no
        major problems (over 1GbE), whereas in UHD 4.15 a 20 MHz sample
        rate causes the control op error within the first couple of
        seconds. <br>
      </div>
    </blockquote>
    <p>Ah, so, rather low rates, and no 10 GbE! <br>
    </p>
    <p>Gotta think about that.</p>
    <p>Best,<br>
      Marcus<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:FDC8C222-43F0-46C2-AEA0-13EA7896D747@stanford.edu">
      <div><br>
      </div>
      <div>Hi Rob=E2=80=94Yes, I totally agree that the Replay block is p=
robably
        very useful to us and may ultimately be the way we end up going.
        I don=E2=80=99t think it was available in the standard release FP=
GA
        image until UHD 4.1 or 4.2 and my thought was to get our
        existing code working with the newer UHD prior to going down
        that path. Part of the upside of our application is that it can
        be run on multiple SDRs in the Ettus family. So the other reason
        we haven=E2=80=99t gone full steam into the Replay block is a des=
ire to
        see if we could get the job done well enough with our non-RFNoC
        application and maintain the exact same code minus a
        configuration file for running on the X310 and B205mini.=C2=A0</d=
iv>
      <div><br>
      </div>
      <div>Thanks for pointing out the potential difference in FIFO
        lengths between the UHD releases. I=E2=80=99ll look into that mor=
e.=C2=A0</div>
      <div><br>
      </div>
      <div>Best,</div>
      <div>Anna<br>
        <div><br>
          <blockquote type=3D"cite">
            <div>On Sep 28, 2023, at 12:31 PM, Rob Kossler
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:rkossler@=
nd.edu">&lt;rkossler@nd.edu&gt;</a> wrote:</div>
            <br class=3D"Apple-interchange-newline">
            <div>
              <div dir=3D"ltr">One more thing.=C2=A0 One difference betwe=
en
                3.15 and 4.xx might be the length of FIFOs on the FPGA
                for buffering Tx data arriving from the host.=C2=A0 If th=
e
                4.xx buffers are smaller, then it may be more likely for
                a "glitch" to occur if your host is a bit "bursty" when
                providing the samples.=C2=A0 If this is true, then perhap=
s
                you could build a custom X310 image with larger buffers.
                <div><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 28, 202=
3
                  at 3:26=E2=80=AFPM Rob Kossler &lt;<a
                    href=3D"mailto:rkossler@nd.edu" moz-do-not-send=3D"tr=
ue"
                    class=3D"moz-txt-link-freetext">rkossler@nd.edu</a>&g=
t;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">Hi Anna,
                    <div>I do not have a response to your direct
                      question regarding performance. However, I have a
                      suggestion that may make the performance
                      irrelevant.=C2=A0 The=C2=A0 X310 image comes with a=
 Replay
                      block that accesses the DRAM chip for storage.=C2=A0
                      Given that you are sending a repeatable waveform,
                      you should have plenty of room to store this ahead
                      of time and playout from the Replay block. This is
                      exactly how I do all of my radar testing. While it
                      will take some effort to make your application
                      play nice with the Replay block, it will be worth
                      it because you will never fight "Late" or
                      "Underrun" again.=C2=A0 =C2=A0(Note that there may =
be a RAM
                      I/O bottleneck if trying to play both channels
                      simultaneously=C2=A0from the Replay block at 200 MS=
/s,
                      but one channel will be no problem).</div>
                    <div>Rob</div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 28,
                      2023 at 1:55=E2=80=AFPM Anna Lamkin Broome &lt;<a
                        href=3D"mailto:abroome@stanford.edu"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">abroome@stanford.=
edu</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div>
                        <div dir=3D"auto">
                          <div dir=3D"auto">Hello,=C2=A0
                            <div><br>
                            </div>
                            <div>We are developing a radar application
                              built on the Ettus SDR platforms. Our code
                              runs well on an X310 with UBX160
                              daughterboards using UHD 3.15 and a
                              B205mini-i using UHD 4.1 and another
                              B205mini-i using UHD 4.4. We want to take
                              advantage of recent power calibration
                              utilities and other features not present
                              in UHD 3.15, so I am now trying to run our
                              code on an X310 with the most recent UHD
                              4.5 release.=C2=A0</div>
                            <div><br>
                            </div>
                            <div>When running our code on the X310 with
                              UHD 4.5 I get warnings for both radio 0
                              and radio 1 (we transmit on one UBX160 and
                              receive on the other):=C2=A0<span
style=3D"font-family:Menlo;font-size:11px;font-variant-ligatures:no-commo=
n-ligatures;color:rgb(159,160,28)"><b>[WARNING]
                                  [0/Radio#0] </b></span><span
style=3D"font-family:Menlo;font-size:11px;font-variant-ligatures:no-commo=
n-ligatures">Attempting
                                to set tick rate to 0. Skipping.=C2=A0</s=
pan>The
                              code uses timed commands to transmit and
                              receive samples from a frequency-swept
                              pulse at a consistent interval (pulse
                              repetition frequency). Our application
                              requires a high PRF and we can tolerate
                              some late command errors, but need to log
                              them for post-processing. Using UHD 4.5,
                              the behavior is not as expected in that
                              something seems to be hanging. At some
                              point during the process=E2=80=94I think on=
ce we
                              first hit a late command error=E2=80=94the =
timing
                              becomes very off from what it should be,
                              and eventually, samples stop being
                              transmitted or received and the
                              application just hangs. Sometimes when
                              killing the application, I get this
                              warning:=C2=A0<span
style=3D"font-family:Menlo;font-size:11px;font-variant-ligatures:no-commo=
n-ligatures;color:rgb(159,160,28)"><b>[WARNING]
                                  [RFNOC::GRAPH::DETAIL]
                                </b></span><span
style=3D"font-family:Menlo;font-size:11px;font-variant-ligatures:no-commo=
n-ligatures">Cannot
                                forward action tx_event from
                                0/Radio#0:INPUT_EDGE:0, no neighbour
                                found!=C2=A0</span>These warnings do not
                              happen when running the application with
                              UHD 3.15.=C2=A0</div>
                            <div><span
style=3D"font-family:Menlo;font-size:11px;font-variant-ligatures:no-commo=
n-ligatures"><br>
                              </span></div>
                            <div>I have tried running the benchmark_rate
                              example with the same host computer and
                              X310 running UHD 3.15 and UHD 4.5. With
                              UHD 4.5 and high sample rates, I get an
                              error:=C2=A0<span style=3D"color:rgb(232,14=
5,45);font-family:Monaco,Menlo,Consolas,&quot;Courier New&quot;,monospace=
;white-space:pre-wrap;background-color:rgba(232,232,232,0.04)">uhd::op_ti=
meout:
 RfnocError: OpTimeout: Control operation timed out waiting for ACK</span=
>,
                              which stops the test before it begins
                              running. Lower sample rates in UHD 4.5
                              run, but produce more errors (including
                              sequence errors) than the same set up
                              running UHD 3.15.=C2=A0</div>
                            <div><br>
                            </div>
                            <div>I have tried refreshing the FPGA image
                              for UHD 4.5 with no change in behavior.
                              The behavior is replicable using multiple
                              host computers (Mac and Ubuntu). If anyone
                              has suggestions on debugging steps, or
                              potential reasons why UHD 4.5 would seem
                              laggy compared to UHD 3.15 (despite
                              running well with UHD 4.x on the
                              B205mini), I would greatly appreciate
                              them. I suspect it may have something to
                              do with the command queue and how it
                              evolves after getting behind.=C2=A0</div>
                            <div><br>
                            </div>
                            <div>Thanks,</div>
                            <div>Anna Broome</div>
                          </div>
                        </div>
                      </div>
                      _______________________________________________<br>
                      USRP-users mailing list -- <a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">
                        usrp-users@lists.ettus.com</a><br>
                      To unsubscribe send an email to <a
                        href=3D"mailto:usrp-users-leave@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">
                        usrp-users-leave@lists.ettus.com</a><br>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------3hdg14Y5m4uUteyXOkIQ45yT--

--===============7133451815845518052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7133451815845518052==--
