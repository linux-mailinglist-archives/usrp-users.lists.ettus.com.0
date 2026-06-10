Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pxg+La7IKWoSdQMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jun 2026 22:27:26 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D0266CC79
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jun 2026 22:27:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=DJsCdthj;
	dkim=fail ("body hash did not verify") header.d=ettus-com.20251104.gappssmtp.com header.s=20251104 header.b=jPkkUMke;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CA2F386843
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jun 2026 16:27:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781123244; bh=ZvpozS7GdkK2m4Smk1wwdvBC3qtwSvlcS0iVsUxLAQA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DJsCdthj4kreT0zYiGQUv/up2YmW92RBup9CKdqFF3ZhxSpbaNBMoEJGdzGPTE080
	 T+9Hp9uzZsYzb7dQuDkhlC4lqBxqpVFdPKm/vTVKhiYj/+ZPgphqJKPVDZF5QpSTBF
	 PWHu2sIVnWYfj+fiJud3rzkUpfO8W/sP5hfygOZAJ9OXZ+aCKyq33v8wqRHaXNO3qV
	 tNZ5lrUVUk1jy1Vx9s0KPV+YOOyKb6mrJjViX8IQPbY7kCJJwATe0FsxOhaU+iU3+w
	 NT9/SYmSMDAeOqaswnK2f6C9cFSMTWuIkBE5QYvArcNm57x+DxiGWgzc+bUd/hf1/j
	 a66kgixtbSgUg==
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 79634386830
	for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2026 16:26:49 -0400 (EDT)
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-660512d80b4so293317d50.1
        for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2026 13:26:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781123209; cv=none;
        d=google.com; s=arc-20240605;
        b=Q+D0EouoixUXIs3TqFzTbjD+kmeWka0K74xVM3jg7s/pQbNoUA21GPuMk0rten9O10
         a1vCSy4jQE1B1t/s5VITWAYd89HOoJmRdC2cSFqM5LP25eRuaDd+fHvjjEQkvArymxGk
         l8Lg5KvJ4Qoi+tgoL4IktT481pIT0OJp9kzCP9em/hh0fqM/5FzDY4LzgTWjF4p+vjZs
         PCagXrniEMWlhc82HUzXMkpJUmXG91ee//OsRmuXgiHFUQZfp5rTI40+3cSundueuA2O
         /Kp1NbML0hP1G611yBdDBgLp/22/0EW5uDYHQ6Im/h65jpim4rXr95+2aOTAqPljMTkA
         XSRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SPkETxz3cZQSeJn+DHmmuBKRRx2lmXSUS5SfTuTP1F8=;
        fh=Zlr3AHqe3w6GGfl2TKoQ18w4acHHo9xMRfpNiRaw2SU=;
        b=bKOw99goz2GbPyD0jyh2kpi652zL2d7tKfg96JxJrVhAX2wjwmpV/TYcFUakQLOcEO
         zo1822uI03U1H03fv0SaplW8r4kXfguM9JNdS0NY+m5KIrqcON5dX0b8jTn106nRVmPG
         ra+Z97J/Vfa9w7GyLk+jsNt1l+egp31+gevgKPrieB56plhoza5wXa7hvM5RymZVp6+K
         HEjWMNmhyXcLwrgQy1NauoVmsilU9tN7GoJBKUTiTpJS6fGpmEV+s0gVS5sAp7+OJJ0U
         //dP1dftWBRzRJYrHcTK+DVey7Pxb9u9qEVxJgWDWDwHAx88Scm76+rakfPVGL6TqweO
         W6nQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1781123209; x=1781728009; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SPkETxz3cZQSeJn+DHmmuBKRRx2lmXSUS5SfTuTP1F8=;
        b=jPkkUMkeJkC/aM3njioyVZlV7Ksz7jHnVbPyRAYUY/i0NcFM7s4hlNRMdK191yAxb+
         PkHHR6vsaCY8AfMEGM3Qlgqt++DmKWOLj+MlyqPnaS+frVptC/4IkrAZ21FMTEo7wFd1
         igVPdHhDuGWTiDXtBggSHonhXRC0OMO/UPVIpfKHm+hRX/B0L9ZJBfEfrpM2GkCGDQ/W
         qzbp2qlUK14UIDb8v6emg8MBYPG+uAsveJVxy+pshNriyek/NsGjbDET09hFHeSpSa9S
         bb6TjHaUdwsjf5paIPsDvH3auXt3FdEYs2JpsmHZdBbkeUbvOgNoDjngrfbuKcC333h+
         3UTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781123209; x=1781728009;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SPkETxz3cZQSeJn+DHmmuBKRRx2lmXSUS5SfTuTP1F8=;
        b=Jhp06UJMVmgKPGvWnuON02lojWryBK5NzgcMrzU6mLODsjZKibcGrCDB2xq1dmUwdo
         vDNmMbKmewG3WGt2ciL/RHBskpQO1JALO8NpIBtPxMFD4d/VuSzc6Lkn/RqmwgCeIGZN
         j26zuG7mWXKNb7A4sfYZbefU+wWat+J5ByMfFNfZBVNmfIOeIiLqGC/QkKNLJZllgYE3
         Lv0QmNcPHSZmH1qRIF4bI3Xe+LwFNSSGBd+0ke51uObB/rlRopm6aIVXPWEPsexyBcmt
         ol4hDgQyPQCrzVhR1X17Lr4k7L5c2w6As81+8NMkVpR50hUf/2bfCvcuS3XIsfLtbPik
         Zq6A==
X-Gm-Message-State: AOJu0YzRoODbJLv4vAtDoypXk8wyl5ZMuhp/+bDqbQqIVZrVbAZlRP6B
	0V+ELmM7u4Mwsbm6XN2DUCYO9K16KwJi2gdHWvioCxj6OXcTF0SM1Byrfa8qmHaNkiMfp6dkEIb
	r2Z2dJe8u2cCaYUshaj78aEOa6Q+VhqjD3gEMG1IFKRXnjc0U/ygogtXD3A==
X-Gm-Gg: Acq92OHxV1RgUyVzb1/4DGJvwEcqbkcnQCRwgwMGubnQPPqEESb6YeSKFVoAjfU0wSX
	H7GO2B7OYGQpJ1uFZ/LqsP6nb1UrOKOft7B4FCM6A4e7uOutn6G7cLorYk41xPCDMM5s9c78FLg
	ezLb0UBSuUmShFPHOCvWP1FZ4cyEoRdtkAZhrVjPzXfZ5y2h7N+c5aN9ZP7PXoeMaKjd3+fLLsz
	0PE0iJbAJ2q//NF13Aiga55kJ+LpBeI2KLCWymFw4viyCFbPiqF7ywELo8+ptL4F40XYt0ENNte
	cm4JyVqd00E2A1I=
X-Received: by 2002:a05:690e:439b:b0:660:3a72:87da with SMTP id
 956f58d0204a3-66266dd3d19mr178636d50.22.1781123208792; Wed, 10 Jun 2026
 13:26:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQU4PVeJpqWm3GB4BVHtbG48WvrnPJ0=s=_o5TtHMW4bg@mail.gmail.com>
In-Reply-To: <CAB__hTQU4PVeJpqWm3GB4BVHtbG48WvrnPJ0=s=_o5TtHMW4bg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 10 Jun 2026 15:26:31 -0500
X-Gm-Features: AVVi8CfLSAPisxVXMlI2CLTEqH7a20MeTAtQ9DgbA92Tc7cIQTRcMDo-ZqXzN68
Message-ID: <CAFche=h-+WLUxeiq1bF49Oz8zspO4K5UFVQTGYahBF-dgYKPdQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: S526PGNJNEXRUV7JGDNF6KP75LVDWSO3
X-Message-ID-Hash: S526PGNJNEXRUV7JGDNF6KP75LVDWSO3
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: build N320 fpga image with axi_ram_fifo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S526PGNJNEXRUV7JGDNF6KP75LVDWSO3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1700770334734538032=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	FORGED_RECIPIENTS(0.00)[m:rkossler@nd.edu,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,lists.ettus.com:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9D0266CC79

--===============1700770334734538032==
Content-Type: multipart/alternative; boundary="000000000000295de00653ec10c7"

--000000000000295de00653ec10c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Sorry for the late reply. On the N320 you have 2 GiB of space that you can
divide as you like. Each channel gets a memory region defined by those
parameters. The FIFO_ADDR_BASE is the start address of each buffer and
FIFO_ADDR_MASK is effectively the size minus 1. The FIFO_ADDR_MASK must be
a power of 2 minus 1 (i.e., all ones). Set FIFO_ADDR_BASE to 0 for every
bit where the mask is 1. Take care not to create overlapping regions for
channels you intend to use. Otherwise, the data for one channel could
overwrite the data in another channel.

If you want one maximum sized FIFO buffer, you can set the mask to
31'7FFFFFFF to get a 2 GiB region. If you set each channel the same, then
you've assigned the same memory space to all four channels. This is fine if
you only intend to use one channel.

      FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h00000000,
31'h00000000}"
      FIFO_ADDR_MASK: "{31'h7FFFFFFF, 31'h7FFFFFFF, 31'h7FFFFFFF, 31'
h7FFFFFFF}"

If you want two maximum sized buffers, I think your example is correct
assuming you only intend to use the first and second channels.

      FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h40000000,
31'h00000000}"
      FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
31'h3FFFFFFF}"

If you want four maximum sized buffers, it would be:

      FIFO_ADDR_BASE: "{31'h60000000, 31'h40000000, 31'h20000000,
31'h00000000}"
      FIFO_ADDR_MASK: "{31'h1FFFFFFF, 31'h1FFFFFFF, 31'h1FFFFFFF, 31'
h1FFFFFFF}"

The throughput is highly application-dependent. It will vary based on the
number of channels and how much those channels contend for memory at the
same time. But we have some benchmark numbers here that will give you a
rough idea:


https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_DRAM_data_rates_=
can_I_expect_on_each_USRP.3F

If you're looking for bytes per second, multiply the numbers in that table
by 4.

One common gotcha is DRAM latency/delay. You may need to tweak the
IN_FIFO_SIZE and/or OUT_FIFO_SIZE when connecting DRAM directly to a radio
block. It's possible to see under/overruns in the radio even if the DRAM is
"fast enough" due to DRAM latency, particularly when it cycles between
multiple channels. But in your case, connecting DRAM to the DDC/DUC, you'll
probably be OK as long as the timestamp delay you add is longer than the
total latency through the DRAM.

Wade

On Thu, May 28, 2026 at 9:39=E2=80=AFAM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am building an N320 image that is basically a repeater with static rfno=
c
> links as follows:
>   radio0 =3D> ddc0 =3D> my-timestamp-adjust =3D> axi_ram_fifo =3D> duc1 =
=3D> radio1
>
> I have a question about how to use the parameters of the axi_ram_fifo
> block in order to maximize the FIFO depth.  From the N320 BIST yml, I fou=
nd
> the following:
>       # These parameters match the memory interface on the N3XX
>       NUM_PORTS: 4
>       MEM_DATA_W: 64
>       MEM_ADDR_W: 31
>       # Create four non-overlapping 32 MB buffers by default
>       FIFO_ADDR_BASE: "{31'h06000000, 31'h04000000, 31'h02000000,
> 31'h00000000}"
>       FIFO_ADDR_MASK: "{31'h01FFFFFF, 31'h01FFFFFF, 31'h01FFFFFF,
> 31'h01FFFFFF}"
>       MEM_CLK_RATE: "303819444" # 166.666666 MHz * 21.875 / 4 / 3 =3D
> 303.819444 MHz
>
> This indicates that there are 4 ports (later in the yml, ports 3 and 4 ar=
e
> explicitly not connected).  My question is: how do I configure
> FIFO_ADDR_BASE and FIFO_ADDR_MASK in order to maximize the FIFO capacity?
>
> For the case of only needing one FIFO buffer, would this be correct?
>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h00000000,
> 31'h00000000}"
>       FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
> 31'h3FFFFFFF}"
>
> For the case of only needing two FIFO buffers, would this be correct?
>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h40000000,
> 31'h00000000}"
>       FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
> 31'h3FFFFFFF}"
>
> My other question is related to what is the maximum axi_ram_fifo
> throughput?  Can I run with one port (in & out) at full streaming rate of
> 250 MS/s?  Does the RAM bandwidth support this rate?  How about if I have=
 2
> ports (in & out) - what is the maximum rate?
>
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000295de00653ec10c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Sorry for the late r=
eply. On the N320 you have 2 GiB of space that you can divide as you like. =
Each channel gets a memory region defined by those parameters. The FIFO_ADD=
R_BASE is the start address of each buffer and FIFO_ADDR_MASK is effectivel=
y the size minus 1. The FIFO_ADDR_MASK must be a power of 2 minus 1 (i.e., =
all ones). Set FIFO_ADDR_BASE to 0 for every bit where the mask is 1. Take =
care not to create overlapping regions for channels you intend to use. Othe=
rwise, the data for one channel could overwrite the data in another channel=
.</div><div><br></div><div>If you want one maximum sized FIFO buffer, you c=
an set the mask to 31&#39;7FFFFFFF to get a 2 GiB region. If you set each c=
hannel the same, then you&#39;ve assigned the same memory space to all four=
 channels. This is fine if you only intend to use one channel.</div><div><b=
r><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE=
: &quot;{31&#39;h00000000, 31&#39;h00000000, 31&#39;h00000000, 31&#39;h0000=
0000}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h7FFFFFFF=
, 31&#39;</span><span style=3D"font-family:monospace">h7FFFFFFF</span><span=
 style=3D"font-family:monospace">, 31&#39;</span><span style=3D"font-family=
:monospace">h7FFFFFFF</span><span style=3D"font-family:monospace">, 31&#39;=
</span><span style=3D"font-family:monospace">h7FFFFFFF</span><span style=3D=
"font-family:monospace">}&quot;</span>

<br><br></div><div>If you want two maximum sized buffers, I think your exam=
ple is correct assuming you only intend to use the first and second channel=
s.</div><div><br></div><div>
<span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: =
&quot;{31&#39;h00000000, 31&#39;h00000000, 31&#39;h40000000, 31&#39;h000000=
00}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h3FFFFFFF, =
31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;</span>

</div><div><br></div><div>If you want four maximum sized buffers, it would =
be:</div><div><br></div><div>
<span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: =
&quot;{31&#39;h60000000, 31&#39;h40000000, 31&#39;h20000000, 31&#39;h000000=
00}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h1FFFFFFF, =
31&#39;</span><span style=3D"font-family:monospace">h1FFFFFFF</span><span s=
tyle=3D"font-family:monospace">, 31&#39;</span><span style=3D"font-family:m=
onospace">h1FFFFFFF</span><span style=3D"font-family:monospace">, 31&#39;</=
span><span style=3D"font-family:monospace">h1FFFFFFF</span><span style=3D"f=
ont-family:monospace">}&quot;</span>

</div><div><br></div><div>The throughput is highly application-dependent. I=
t will vary based on the number of channels and how much those channels con=
tend for memory at the same time. But we have some benchmark numbers here t=
hat will give you a rough idea:<br><br>=C2=A0 =C2=A0 <a href=3D"https://kb.=
ettus.com/RFNoC_Frequently_Asked_Questions#What_DRAM_data_rates_can_I_expec=
t_on_each_USRP.3F">https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#Wh=
at_DRAM_data_rates_can_I_expect_on_each_USRP.3F</a></div><div><br></div><di=
v>If you&#39;re looking for bytes per second, multiply the numbers in that =
table by 4.</div><div><br></div><div>One common gotcha is DRAM latency/dela=
y. You may need to tweak the IN_FIFO_SIZE and/or OUT_FIFO_SIZE when connect=
ing DRAM directly to a radio block. It&#39;s possible to see under/overruns=
 in the radio even if the DRAM is &quot;fast enough&quot; due to DRAM laten=
cy, particularly when it cycles between multiple channels. But in your case=
, connecting DRAM to the DDC/DUC, you&#39;ll probably be OK as long as the =
timestamp delay you add is longer than the total latency through the DRAM.<=
/div><div><br></div><div>Wade</div></div><br><div class=3D"gmail_quote gmai=
l_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 28, 20=
26 at 9:39=E2=80=AFAM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,=
</div><div>I am building an N320 image that is basically a repeater with st=
atic rfnoc links as follows:</div><div><span style=3D"font-family:monospace=
">=C2=A0 radio0 =3D&gt; ddc0 =3D&gt; my-timestamp-adjust =3D&gt; axi_ram_fi=
fo =3D&gt; duc1 =3D&gt; radio1</span></div><div><br></div><div>I have a que=
stion about how to use the parameters of the axi_ram_fifo block in order to=
 maximize the FIFO depth.=C2=A0 From the N320 BIST yml, I found the followi=
ng:</div><div><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 # =
These parameters match the memory interface on the N3XX<br>=C2=A0 =C2=A0 =
=C2=A0 NUM_PORTS: 4<br>=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: 64<br>=C2=A0 =C2=A0=
 =C2=A0 MEM_ADDR_W: 31<br>=C2=A0 =C2=A0 =C2=A0 # Create four non-overlappin=
g 32 MB buffers by default<br><span style=3D"background-color:rgb(255,255,0=
)">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#39;h06000000, 31&#39;h04=
000000, 31&#39;h02000000, 31&#39;h00000000}&quot;<br>=C2=A0 =C2=A0 =C2=A0 F=
IFO_ADDR_MASK: &quot;{31&#39;h01FFFFFF, 31&#39;h01FFFFFF, 31&#39;h01FFFFFF,=
 31&#39;h01FFFFFF}&quot;<br></span>=C2=A0 =C2=A0 =C2=A0 MEM_CLK_RATE: &quot=
;303819444&quot; # 166.666666 MHz * 21.875 / 4 / 3 =3D 303.819444 MHz<br></=
span><br></div><div>This indicates that there are 4 ports (later in the yml=
, ports 3 and 4 are explicitly not connected).=C2=A0 My question is: how do=
 I configure FIFO_ADDR_BASE and FIFO_ADDR_MASK in order to maximize the FIF=
O capacity?</div><div><br></div><div>For the case of only needing one FIFO =
buffer, would this be correct?</div><div><span style=3D"font-family:monospa=
ce">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#39;h00000000, 31&#39;h0=
0000000, 31&#39;h00000000, 31&#39;h00000000}&quot;<br>=C2=A0 =C2=A0 =C2=A0 =
FIFO_ADDR_MASK: &quot;{31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF=
, 31&#39;h3FFFFFFF}&quot;<br></span><br></div><div><div>For the case of onl=
y needing two FIFO buffers, would this be correct?</div><div><span style=3D=
"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#39;=
h00000000, 31&#39;h00000000, 31&#39;h40000000, 31&#39;h00000000}&quot;<br>=
=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h3FFFFFFF, 31&#39;h3FFFF=
FFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;<br></span><br></div><div>My =
other question is related to what is the maximum axi_ram_fifo throughput?=
=C2=A0 Can I run with one port (in &amp; out) at full streaming rate of 250=
 MS/s?=C2=A0 Does the RAM bandwidth support this rate?=C2=A0 How about if I=
 have 2 ports (in &amp; out) - what is the maximum rate?</div><div><br></di=
v><div>Rob</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000295de00653ec10c7--

--===============1700770334734538032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1700770334734538032==--
