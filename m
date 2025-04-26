Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3B5A9D74D
	for <lists+usrp-users@lfdr.de>; Sat, 26 Apr 2025 04:46:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC0FC3862A6
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 22:46:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745635585; bh=KHwSKwu1WXNwU3dXxnht+9r/FioHUgFNcQxiUc3HXLg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wnvj+5qVzhE3h6Ekw30OhS4g32h8Rc0ZO99cR/UOCh8cXwNocsM0dUSTDvA+5NWz1
	 NODHdHjrgBOl+za3UPWqgn3Y4iIGNzvMhIx1dTh3i+G4SQfjT0Nf1kRJQvLzwjnm3e
	 ZXwd1R2soDCrekYO0b5uJLEDT800255lETolIWclQcB9RzeRHjkCdCuJlm+6FK/Df2
	 ELfZipdo0BtAzq4az9ebVntm9fCHuoEN/BXxisrfc64VdlHQdDBFVj9yTUPsSoQOh6
	 Gx6N1MzFjWJPBIoMksfSX4v/NmMzU4BGztT8FUDaai/e+RZJCzGMF5IXe94xXld1Q2
	 L5YFCPRPZTyUw==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 65B4F386245
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 22:46:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j3ReoxZU";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7c08fc20194so651778685a.2
        for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 19:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745635568; x=1746240368; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ddik74FYcz4f4pzdxZDNWcYNnThj2GgQvmHhSvD5R4Y=;
        b=j3ReoxZUiWrChcbSmnQ6zj7UWDGqsXKckXoEkeQ21T4/GzmX1QeFnQxp+fRqk+wW30
         ZaGCrN1lTO4hDx72te49DzZGnwWEEjL6XuLjOjytCQ4DwYfXO0xaLi5a1GZfK94NSvdz
         sb9flHFlqzsN3Xd1+x6hnA7Pigj42/45yj3DUPL5ZrSH1NmNZtVJ+7aNHMN8ZRzgiRSI
         aRPcwOGgTp5sjTZx7q4Fuoa018QUlyhm8UGtURTeM+fxjndVpjjB6NAz3TGisAgund8k
         3thjdYLzhIq8VHccFiVA62I5k0gi1iREa803zFEUhaJHm5QpLIJVdfTB3hPGtiJqoUF+
         D7Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745635568; x=1746240368;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ddik74FYcz4f4pzdxZDNWcYNnThj2GgQvmHhSvD5R4Y=;
        b=AwbWt8kLZRRY/TnSHTDRfzoWtrWqS0As3Ka9UZQI+Upeq0EdKnTtoCKL6BC+3tDQXz
         8UKzxUNpqqdYEBDLhVBQHtv3cYWYlbGzrpQ6Bz9ugjq+FReAqG3cLocCio1tHm0X1ZBZ
         RLY5rtqVyksHuN+382hk+/YxObIl+n70Hi4CkuwbvR1dwZPisw79RMw5oRSuaxWZ9nGm
         P0oEqGjhjyk65kVpdSNd5Sov7DrBW/sQS6q9BIYxvxgcEhrR5oTkjhvyoYN6fVbJO2GU
         ToDuy6fZF9SvHXV4QToBWUNBK9/XPm9urRtib+USkpbouxTXYWg1snEu1Kc6ttc3xMxC
         qV+g==
X-Forwarded-Encrypted: i=1; AJvYcCU+3wryz74ZZQoK6sxnTepXBRlR2VLebD6HShJ17RzLl2wUdeKHmR+caVpjoHjiq9TEbvMKp2mSqo9z@lists.ettus.com
X-Gm-Message-State: AOJu0YydPpAqd7Qb3Nda0r6RaYzPdr9HsHzQIm6CKVQiISLydf6ZLF3l
	mZwJ7joYYP953KTXmp7hPzeVf8/4us2HJzCKGeJfpdFkknvx3LO57mz5Xg==
X-Gm-Gg: ASbGncvGnlKqXYJRvpgxMB/83VFdzKzzlMsXuThpi3CU10fPO7MklS9fneVRvx/OlTG
	twSnoXfzbCz8B51hrVHuM8sUZRua/Ry+9Ny2GyUw45hYqklhNyl142w/qZuJleLB5ZZ8rLAnqTf
	czcqOifJXeR3fnoMOgHv5UgcCvzveuU9CkI3maSYJSIA5V4QS1MbXb6yN+pDJ68oaHRaiUp983d
	MV9s/qCXigtpXhE0ZUYdu03wLPIr6pUV/4Z84DsoG2DHALM5+DoAwXG9lMyHwDsko9Kx9D/td4F
	ahHkpisrnzPe01iZ0LKX+UnIJVhZKHXvCwTAzU5Vve0Sf/7i/A==
X-Google-Smtp-Source: AGHT+IETK7aAhe64O/Y8VpDDKKH8NUP+pylydb7YOJDwutqYZqL9c/UKRi8Bd1mv+H3BEnUJ6r+YGw==
X-Received: by 2002:a05:620a:468b:b0:7c5:5cd6:5cea with SMTP id af79cd13be357-7c96686b148mr248782085a.15.1745635567588;
        Fri, 25 Apr 2025 19:46:07 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c9589cc670sm300179185a.0.2025.04.25.19.46.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 19:46:07 -0700 (PDT)
Message-ID: <8660a987-f91a-402f-b575-a5b907a2e55e@gmail.com>
Date: Fri, 25 Apr 2025 22:45:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nikos Balkanas <nbalkanas@gmail.com>, usrp-users@lists.ettus.com
References: <CAAxXO2G+q1LtJVVQyQt6at2QNh7PfVrrZhHvZauB8QEipF+w6w@mail.gmail.com>
 <e08576a1-ede9-4f27-9706-8a38cfc50c57@gmail.com>
 <CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmail.com>
Message-ID-Hash: D6JXAZOAGCQOJKVWYXIAV36SAMDKJ7Q2
X-Message-ID-Hash: D6JXAZOAGCQOJKVWYXIAV36SAMDKJ7Q2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NIC suggestion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D6JXAZOAGCQOJKVWYXIAV36SAMDKJ7Q2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7549404069584675715=="

This is a multi-part message in MIME format.
--===============7549404069584675715==
Content-Type: multipart/alternative;
 boundary="------------yZqwvX30ZKxbH24ljjzDCWAl"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------yZqwvX30ZKxbH24ljjzDCWAl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/04/2025 22:26, Nikos Balkanas wrote:
> Thanks Marcus,
>
> for your fast reply.
>
> On Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 25/04/2025 20:50, Nikos Balkanas wrote:
>>     Hello,
>>
>>     I need to buy a new NIC. What would you suggest?
>>     The one I use is an old Mellanox 10 Gbs, before the Connect-4 seri=
es.
>>     It can only do 1996 S/s, need 19960 (10x more) to work with
>>     latest uhd.
>>     Using Ubuntu 24.04 and uhd 4.6.0
>     So, 1.996ksps vs 19.960ksps?=C2=A0=C2=A0 You hardly need a 10Gbit l=
ink to
>     support that.=C2=A0 So, perhaps something
>     =C2=A0 is being lost here in your requirements?
>
>
> True. Can't explain it in terms of bandwidth. 16 * 1996 =3D 31.936 Kbps=
,=20
> 16 * 19960 =3D 319.360 Kbps well short of a 10 Gbps line:(
> Does a complex pair count as 1 sample, or 2?
> I have followed all the instructions in=20
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks,
> Even installed the DPDK drivers. My Mellanox is too old to use their=20
> OFED drivers:(
>
>>
>>     On a related question. it seems that the streamer doesn't crash
>>     anymore
>>     when receiving less than MAXSPS samples, instead it reads 0:(
>>     This was due to the sse2 code not aligned in convert.
>>     I change my stream args to cpu_format=3Dsc16, otw=3Dsc16, so no
>>     conversion required.
>>     Streamer still doesn't read anything. Is there a reason for it?
>>
>     You'd need to share more of your code.=C2=A0 This should just work =
as
>     far as I can tell.
>
> Thanks. these are just the usrp code:
>
> int main()
> {
> uhd_stream_args_t stream_args =3D
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{
> =C2=A0 .cpu_format =3D "sc16",
> =C2=A0 .otw_format =3D "sc16",
> =C2=A0 .args =3D "",
> =C2=A0 .n_channels =3D 1,
> =C2=A0 =C2=A0.channel_list =3D &channel
> =C2=A0};
> ..uhd_stream_cmd_t stream_cmd =3D
> =C2=A0{
> =C2=A0 =C2=A0.stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
> =C2=A0 =C2=A0 .stream_now =3D true
> =C2=A0 };
>
>     if (uhd_init(0, 0, gain)) do_exit(20);
>     if ((err =3D uhd_usrp_get_rx_stream(dev[0], &stream_args,
>     rx_streamer[0])))
>     {
>     uhd_get_last_error(errmsg, 127);
>     error(log, "Failed to get streamer[0] (%d). %s.\n", 0, FL, LN, FN,
>     err, errmsg);
>     uhd_rx_streamer_free(&rx_streamer[0]);
>     rx_streamer[0] =3D NULL;
>     uhd_rx_metadata_free(&md[0]);
>     md[0] =3D NULL;
>     do_exit(30);
>     }
>     if ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0], &maxsamp=
s)))
>
>     {
>     uhd_get_last_error(errmsg, 127);
>     error(log, "Failed to get max samples/buffer[0] (%d). %s.\n", 0,
>     FL, LN, FN, err,
>     ..errmsg);
>     do_exit(35);
>     }
>     if (maxsamps !=3D MAXSMPS)
>     warn(log, "Incorrect maxsamples (%ld). Expected %d.\n", 0, FL, LN,
>     FN, maxsamps,
>     MAXSMPS);
>     info(log, "Max samples/buffer[0]: %ld\n", 0, maxsamps);
>
>     =C2=A0 =C2=A0 if ((err =3D uhd_rx_streamer_issue_stream_cmd(rx_stre=
amer[0],
>     &stream_cmd)))
>
>     {
>     uhd_get_last_error(errmsg, 127);
>     error(log, "Failed to start streamer[0] (%d). %s.\n", 0, FL, LN,
>     FN, err, errmsg);
>     do_exit(40);
>     }
>
> =C2=A0 =C2=A0[...]
> =C2=A0do_exit(0)
> =C2=A0 =C2=A0 =C2=A0}
>
>     bool uhd_init(size_t channel, double srate, double gain)
>     {
>     double tmp;
>     uhd_rx_metadata_error_code_t err;
>
>     if ((err =3D uhd_set_thread_priority(uhd_default_thread_priority,
>     true)))
>     warn(log, "Unable to set =C2=A0main thread priority (%d). %s.\n", 0=
,
>     FL, LN, FN,
>     err, uhdError(err));
>     /* Create USRP */
>     f ((err =3D uhd_usrp_make(&dev[channel], "type=3Dx300")))
>     {
>     error(log, "Failed to create USRP (%d). %s.\n", 0, FL, LN, FN, err,
>     uhdError(err));
>     dev[channel] =3D NULL;
>     =C2=A0 =C2=A0 =C2=A0 return(FAIL);
>
>     }
>     info(stderr, "Created USRP with args\n", 0);
>
>     /* Create RX streamer */
>     if ((err =3D uhd_rx_streamer_make(&rx_streamer[channel])))
>     {
>     error(log, "Failed to create rx_streamer[%d] (%d). %s.\n", 0, FL,
>     LN, FN,
>     channel, err, uhdError(err));
>     return(FAIL);
>     }
>     /* Create RX metadata */
>     if ((err =3D uhd_rx_metadata_make(&md[channel])))
>     {
>     error(log, "Failed to create md[%d] (%d). %s.\n", 0, FL, LN, FN,
>     channel,
>     err, uhdError(err));
>     return(FAIL);
>     }
>
>     /* Get master clock rate */
>     if ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0, &tmp))=
)
>
>     {
>     error(log, "Failed to set master clock to %.0lf Mhz (%d). %s.\n",
>     0, FL,
>     LN, FN, tmp/1000000, err, uhdError(err));
>     return(FAIL);
>     }
>     info(stderr, "Master clock is at %.0lf Mhz\n", 0, tmp/1000000);
>     /* Set the sample rate */
>     if (srate && !uhd_set_rx_rate_check(channel, srate)) return(FAIL);
>     /* Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */
>
>     =C2=A0 =C2=A0if ((err =3D uhd_usrp_set_rx_gain(dev[channel], gain, =
channel, "")))
>     {
>     error(log, "Failed to set tuner[%d] gain to %.0lf db (%d). %s.\n",
>     0, FL,
>     LN, FN, channel, gain, err, uhdError(err));
>     return(FAIL);
>     }
>     =C2=A0 =C2=A0if (!(err =3D uhd_usrp_get_rx_gain(dev[channel], chann=
el, "", &tmp)))
>     info(log, "Tuner[%d] gain set to %.0lf (%.0lf) dB\n", 0, channel,
>     tmp,gain);
>
> ./* Set channel bw to conserve tuner resources. Not needed, set by=20
> srate */
> uhd_usrp_set_rx_bandwidth(dev[channel], srate, channel);
> ./* Disable subtracting constant averaged background. Signal looks=20
> cleaner */
> if ((err =3D uhd_usrp_set_rx_dc_offset_enabled(dev[channel], false,=20
> channel)))
> {
> warn(log, "Failed to disable FPGA DC offset on channel %d(%d). %s.\n", =
0,
> FL, LN, FN, channel, err, uhdError(err));
> }
> info(stderr, "Disabled FPGA DC offset on channel %d\n", 0, channel);
> return(SUCCESS);
> =C2=A0 =C2=A0}
>
> This is the generated output:
>
> [INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;=20
> UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with args
> Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at 200 Mhz
> Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
> Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main Incorrect=20
> maxsamples (1996). Expected 19960.
> Sat Apr 26 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996
> [WARNING] [0/Radio#0] Ignoring stream command for finite acquisition=20
> of zero samples
> I hope this reads OK. Maybe next time I should attach the code:)
>
>>     TIA
>>     Nikos
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
I believe that max number of samples-per-buffer is limited by MTU=20
size.=C2=A0=C2=A0 Which is typically around 8000 or so for "jumbo frames"=
.


--------------yZqwvX30ZKxbH24ljjzDCWAl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/04/2025 22:26, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div class=3D"gmail_default" style=3D"font-size:small">Thanks
            Marcus,</div>
          <div class=3D"gmail_default" style=3D"font-size:small"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-size:small">for your
            fast reply.</div>
        </div>
        <br>
        <div class=3D"gmail_quote gmail_quote_container">
          <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 26, 2025 at
            4:08=E2=80=AFAM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div>
              <div>On 25/04/2025 20:50, Nikos Balkanas wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div style=3D"font-size:small">Hello,</div>
                  <div style=3D"font-size:small"><br>
                  </div>
                  <div style=3D"font-size:small">I need to buy a new NIC.
                    What would you suggest?</div>
                  <div style=3D"font-size:small">The one I use is an old
                    Mellanox 10 Gbs, before the Connect-4 series.</div>
                  <div style=3D"font-size:small">It can only do 1996 S/s,
                    need 19960 (10x more) to work with latest uhd.</div>
                  <div style=3D"font-size:small">Using Ubuntu 24.04 and
                    uhd 4.6.0</div>
                </div>
              </blockquote>
              So, 1.996ksps vs 19.960ksps?=C2=A0=C2=A0 You hardly need a =
10Gbit
              link to support that.=C2=A0 So, perhaps something<br>
              =C2=A0 is being lost here in your requirements?<br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-size:small">True. Ca=
n't
            explain it in terms of bandwidth. 16 * 1996 =3D 31.936 Kbps,
            16 * 19960 =3D 319.360 Kbps well short of a 10 Gbps line:(</d=
iv>
          <div class=3D"gmail_default" style=3D"font-size:small">Does a
            complex pair count as 1 sample, or 2?</div>
          <div class=3D"gmail_default" style=3D"font-size:small">I have
            followed all the instructions in=C2=A0<a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>,</div=
>
          <div class=3D"gmail_default" style=3D"font-size:small">Even
            installed the DPDK drivers. My Mellanox is too old to use
            their OFED drivers:(</div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div style=3D"font-size:small"><br>
                  </div>
                  <div style=3D"font-size:small">On a related question. i=
t
                    seems that the streamer doesn't crash anymore</div>
                  <div style=3D"font-size:small">when receiving less than
                    MAXSPS samples, instead it reads 0:(</div>
                  <div style=3D"font-size:small">This was due to the sse2
                    code not aligned in convert.</div>
                  <div style=3D"font-size:small">I change my stream args
                    to cpu_format=3Dsc16, otw=3Dsc16, so no conversion
                    required.</div>
                  <div style=3D"font-size:small">Streamer still doesn't
                    read anything. Is there a reason for it?</div>
                  <div style=3D"font-size:small"><br>
                  </div>
                </div>
              </blockquote>
              You'd need to share more of your code.=C2=A0 This should ju=
st
              work as far as I can tell.<br>
              <br>
            </div>
          </blockquote>
          <div><span class=3D"gmail_default" style=3D"font-size:small"></=
span></div>
          <div><span class=3D"gmail_default" style=3D"font-size:small">Th=
anks.
              these are just the usrp code:</span></div>
          <div><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-size:small">int main=
()</div>
          <div class=3D"gmail_default" style=3D"font-size:small">{</div>
          <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0
            uhd_stream_args_t stream_args =3D<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
{<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 .cpu_format =3D "sc16",<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 .otw_format =3D "sc16",<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 .args =3D "",<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 .n_channels =3D 1,<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0.channel_list =3D &amp;channel<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0};<br>
            ..uhd_stream_cmd_t stream_cmd =3D<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0{<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0.stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_D=
ONE,<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 .stream_now =3D true<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 };</div>
          <div class=3D"gmail_default" style=3D"font-size:small"><br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div> <span class=3D"gmail_default" style=3D"font-size:small"=
>=C2=A0
                =C2=A0 </span>if (uhd_init(0, 0, gain)) do_exit(20);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if
              ((err =3D uhd_usrp_get_rx_stream(dev[0], &amp;stream_args,
              rx_streamer[0])))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>uhd_get_last_error(errmsg, 127);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>error(log, "Failed to get streamer[0]=
 (%d).
              %s.\n", 0, FL, LN, FN, err, errmsg);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>uhd_rx_streamer_free(&amp;rx_streamer[=
0]);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>rx_streamer[0] =3D NULL;<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>uhd_rx_metadata_free(&amp;md[0]);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>md[0] =3D NULL;<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>do_exit(30);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>if
              ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0],
              &amp;maxsamps)))</div>
          </blockquote>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                =C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>uhd_get_last_error(errmsg, 127);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>error(log, "Failed to get max
              samples/buffer[0] (%d). %s.\n", 0, FL, LN, FN, err,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>..errmsg);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>do_exit(35);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if
              (maxsamps !=3D MAXSMPS)<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>warn(log, "Incorrect maxsamples (%ld).=
 Expected
              %d.\n", 0, FL, LN, FN, maxsamps,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>MAXSMPS);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>info(log,
              "Max samples/buffer[0]: %ld\n", 0, maxsamps);<br>
              <br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 i</span>f
              ((err =3D uhd_rx_streamer_issue_stream_cmd(rx_streamer[0],
              &amp;stream_cmd)))=C2=A0</div>
          </blockquote>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0
                =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>uhd_get_last_error(errmsg, 127);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>error(log, "Failed to start streamer[0=
] (%d).
              %s.\n", 0, FL, LN, FN, err, errmsg);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0</span>do_exit(40);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>}<br>
            </div>
          </blockquote>
          <div><span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              =C2=A0 =C2=A0[...]</span></div>
          <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0
            =C2=A0do_exit(0)</div>
          <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0}</div>
          <div class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=
=A0 =C2=A0</div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div> bool uhd_init(size_t channel, double srate, double
              gain)<br>
              {<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>double
              tmp;<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>uhd_rx_metadata_error_code_t
              err;<br>
              <br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>if
              ((err =3D
              uhd_set_thread_priority(uhd_default_thread_priority,
              true)))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>warn(log, "Unable to set=
 =C2=A0main thread
              priority (%d). %s.\n", 0, FL, LN, FN,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>err=
, uhdError(err));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              </span>/* Create USRP */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              </span>f ((err =3D uhd_usrp_make(&amp;dev[channel],
              "type=3Dx300")))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0=C2=A0</span>error(log, "Failed to create US=
RP (%d).
              %s.\n", 0, FL, LN, FN, err,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>uhdError(err));<=
br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>dev[channel] =3D NULL;<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 r</span>eturn(FAIL);=C2=A0</div>
          </blockquote>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>info(stderr, "Created USRP with args\=
n", 0);<br>
              <br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>/*
              Create RX streamer */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if
              ((err =3D uhd_rx_streamer_make(&amp;rx_streamer[channel])))=
<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>error(log, "Failed to create rx_stream=
er[%d]
              (%d). %s.\n", 0, FL, LN, FN,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>channel, err, uhdError(e=
rr));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 </span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>/*
              Create RX metadata */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>if
              ((err =3D uhd_rx_metadata_make(&amp;md[channel])))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0</span>error(log, "Failed to create md[%d] (%d).
              %s.\n", 0, FL, LN, FN, channel,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>err, uhdError(err));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0=C2=A0</span>return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>}<br>
              <br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0=C2=A0</span>/*
              <span class=3D"gmail_default" style=3D"font-size:small">G</=
span>et
              master clock rate */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>if
              ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0,
              &amp;tmp)))=C2=A0</div>
          </blockquote>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                =C2=A0=C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0</span>error(log, "Failed to set mast=
er clock to
              %.0lf Mhz (%d). %s.\n", 0, FL,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN, FN, tmp/1000=
000, err,
              uhdError(err));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              </span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>info(stderr,
              "Master clock is at %.0lf Mhz\n", 0, tmp/1000000);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>/*
              Set the sample rate */<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>if
              (srate &amp;&amp; !uhd_set_rx_rate_check(channel, srate))
              return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0</span>/*
              Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */=C2=A0=
</div>
          </blockquote>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div><span class=3D"gmail_default" style=3D"font-size:small">=
=C2=A0 =C2=A0
                =C2=A0 =C2=A0i</span>f ((err =3D uhd_usrp_set_rx_gain(dev=
[channel],
              gain, channel, "")))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0</span>{<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>error(log, "Failed to se=
t tuner[%d] gain to
              %.0lf db (%d). %s.\n", 0, FL,<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN, FN, c=
hannel, gain, err,
              uhdError(err));<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0</span>}<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0i</span>f (!(err =3D uhd_usrp_get_rx_gain(de=
v[channel],
              channel, "", &amp;tmp)))<br>
              <span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
                =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>info(log, "Tuner[=
%d] gain set to %.0lf
              (%.0lf) dB\n", 0, channel, tmp,<span class=3D"gmail_default=
"
                style=3D"font-size:small">=C2=A0</span>gain);</div>
          </blockquote>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0</span>./*
          Set channel bw to conserve tuner resources. Not needed, set by
          srate */<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0</span>uhd_usrp_set_rx_bandwidth(dev[channel], s=
rate,
          channel);<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>./*
          Disable subtracting constant averaged background. Signal looks
          cleaner */<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0=C2=A0</span>if ((err =3D
          uhd_usrp_set_rx_dc_offset_enabled(dev[channel], false,
          channel)))<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0</span>{<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>warn(log, "Failed to disabl=
e FPGA DC offset on
          channel %d(%d). %s.\n", 0,<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>FL, LN, FN, c=
hannel, err, uhdError(err));</div>
        <div class=3D"gmail_quote gmail_quote_container"><span
            class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0</span>}<br>
          <span class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0</span>info(stderr, "Disabled FPGA DC off=
set on channel
          %d\n", 0, channel);<span class=3D"gmail_default"
            style=3D"font-size:small"></span></div>
        <div class=3D"gmail_quote gmail_quote_container"><span
            class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0</span>return(SUCCESS);<br>
          <div><span class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0 =C2=A0 =C2=A0
              =C2=A0 =C2=A0}</span></div>
          <div><span class=3D"gmail_default" style=3D"font-size:small"><b=
r>
            </span></div>
          <div><span class=3D"gmail_default" style=3D"font-size:small">Th=
is
              is the generated output:</span>=C2=A0</div>
          <div><br>
          </div>
          <div><span class=3D"gmail_default" style=3D"font-size:small"></=
span>[INFO]
            [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
            UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1</div>
          [INFO] [X300] X300 initialization sequence...<br>
          [INFO] [X300] Maximum frame size: 8000 bytes.<br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with args<br>
          Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at 200 Mhz<br=
>
          Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to 30 (30)
          dB<br>
          Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main
          Incorrect maxsamples (1996). Expected 19960.<br>
          Sat Apr 26 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996<b=
r>
          <div>[WARNING] [0/Radio#0] Ignoring stream command for finite
            acquisition of zero samples=C2=A0</div>
          <div><span class=3D"gmail_default" style=3D"font-size:small"></=
span></div>
          <div><span class=3D"gmail_default" style=3D"font-size:small">I
              hope this reads OK. Maybe next time I should attach the
              code:)</span>=C2=A0</div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div style=3D"font-size:small"> </div>
                  <div style=3D"font-size:small">TIA</div>
                  <div style=3D"font-size:small">Nikos</div>
                </div>
                <br>
                <fieldset></fieldset>
                <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a>
To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a>
</pre>
              </blockquote>
              <br>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    I believe that max number of samples-per-buffer is limited by MTU
    size.=C2=A0=C2=A0 Which is typically around 8000 or so for "jumbo fra=
mes".<br>
    <br>
    <br>
  </body>
</html>

--------------yZqwvX30ZKxbH24ljjzDCWAl--

--===============7549404069584675715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7549404069584675715==--
