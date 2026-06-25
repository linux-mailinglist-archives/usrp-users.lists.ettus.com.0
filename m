Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9KqYAyM7PWqxzggAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 16:28:51 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3116C6A24
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 16:28:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=0vFlTtjq;
	dkim=fail ("body hash did not verify") header.d=ettus-com.20251104.gappssmtp.com header.s=20251104 header.b=TGxOezs3;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E790385F48
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 10:28:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782397729; bh=lKIEjENHgkHQeWYeya4zz4j934ZETlsiPWTLyXnAHCU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0vFlTtjqZ2V1jcx1jqCeRLPxnTjiBymakHzEza43KxutjzIqe2cGuuoiD7Ch9PzpB
	 y42wZHkN/tOBt/q/M9g12LVXSdkk4KnIM0mOnUvhCo1uaweooSF845IKBlg+9Ei6IO
	 VorLS5kj7rJh+oVmkxMhGa94i7ydmbbgqvVYQQlh6BloScNsRUM2ih15WhxC8fgLM4
	 o+vaynQKhQBDYqdol4BIu9qiU/BPTdoKEvcGqXUmUo9nXbUjtsNQ1Fu4GPoBz4dhys
	 65LsSUOAQbdHqnC1TyxU6lqX4hAJFf0Mps97Ra8CzoICuMQOXri9gPOYE+i1iIg2X6
	 Aqx3MNhcwW/uA==
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	by mm2.emwd.com (Postfix) with ESMTPS id C23AD385BC3
	for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2026 10:27:39 -0400 (EDT)
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-664801de06aso1363952d50.2
        for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2026 07:27:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782397659; cv=none;
        d=google.com; s=arc-20260327;
        b=oQxvAXFJi6DcB7/1bL9UbYLI5ZSfxqJIMwbA0rS0v7JecHbP+IceG3qiQVOjPn/ATl
         h203z9tPmBAk3q4MHL5z0MDDhaVgZzostUisdtJztBXfldVkr7a+Hi7UZ2+vkLFbKolD
         fZKiNpLmSN/Bd9OC16lAggC4f2q6qPYUSijD7hbtU3I6bOD0AI90wnCCaSfh7B0+p0dD
         7zCAwnF/cmVIGks3oIngXnRp1/j8Aa0TQ5Sn2t0B3NIDjT7YJncmF4CSbTOp4TQ2OmWl
         lrtENyaXhfzoaTP0TgW5BHsV4gT3OB9q7Wq4X5AlCt0jmnhQ8Ih68LNesoMuJCfyx5AW
         0AAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Bz9Mf3o9ulqE2XpBlglGp6yc3BWObmEE/QOiFFyZ3Js=;
        fh=Zlr3AHqe3w6GGfl2TKoQ18w4acHHo9xMRfpNiRaw2SU=;
        b=db72Z/3NLaTZTObv/e1y5sZ031v/9afa5ocl7+wb4KzJ351lPlJow7cXwHamRfn25Z
         DziONOIOcsU1gI8rANfHgfLmXuRd44WEKfaICXb5KiUtrPmwKXahuS1hhN933nh76EDA
         kqz4XD1DGItfT9C26bappUBKDnrqPNY9ndpEbrkHFC2JrIcNDksyqGKRTJsMCSSHXLd+
         v+FIyTdmi5b3A8rzbl9pAQWKwCKqBnXPy3GpAccopu1zzpig+C3ludCb10fC/+CWo6Rf
         BbshvkDXPcrX77llO3OgB8B1u8GfSi6pPqjpS8wezyaL5B+/HTMZgaAOPengbUfu9ae3
         rK6g==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1782397659; x=1783002459; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bz9Mf3o9ulqE2XpBlglGp6yc3BWObmEE/QOiFFyZ3Js=;
        b=TGxOezs3EVClBTckUXYdkcIzk17MLmsbbonAfsJELgsET2vQwc7neCU4hwHs8yz6K7
         5q/NnRWKFbKHLf9zzUhjd1QcdSWMaPqcW0NuDur8UR0mrPLpkYXf8+oyNMs/sxp9D08+
         5Cnbv4WZtN6XId6BgsyGzRbnjNoUqcnxtDiH4A/s401EmT8c+HTFm1IOhVUkN5mIisL7
         DX3uHlri5vVtz/CYJqCX7TlrkNfMRK6OhEQZ+S0DSWPCXr5UP0Y8OYqssBMozpBc0dPv
         +ZW/2GE9YLgLgvrvVv2JVy7iwv8lvRcgrEoLdj7Z1GLwpjJ0vS9PCtm214vCHrNrAxsV
         ig5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782397659; x=1783002459;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bz9Mf3o9ulqE2XpBlglGp6yc3BWObmEE/QOiFFyZ3Js=;
        b=ShxafPCqeQYoenvM91kggrrXKGh8vMe20dBCBzDHFKqfM1aLOFtfARqNoDuEIHw0Fi
         2SPTf3sVaB3Az2Da5kRlPhBma5qsvpFoeqiDVOzSshty9VCQlzGAKxt4p7uNoD2e7WFt
         wzfRpdLqHkwLqzjTnbvQ9AkT85mmGTu0PiCt9RxJ4mZv+LCjzLpFxELqOj+eaS3ucBI1
         Nz5XGbV3l7Ne90A/5yActXzOdVyaPUkTMas3XWcxwMu6hEQJVx8wxvBOiIiPhQUDQaNu
         RzbItQKlZIpsmsaT9cCr+RHRqdAlzcaBS2pr71O1apmJ+tgLRxf5tu96QqUxqi6X4i2k
         +/0A==
X-Gm-Message-State: AOJu0YygVgPv9OGA8U/nss6RTnpPFPq3l2YO7bWHVMsEr14mTALUlNAR
	1i5iJRPlyvhGHnMhDPGqhcQWAcX4UrMF/fh9E0W3b+RgOtnDcqrijyBvJvJwiU3uD2FVGlTEbYh
	X4JanyXYYY7dIvORdr1q8Y1z0lW2DdSQhjp1eFwpg4J1u3LsWr99khFg=
X-Gm-Gg: AfdE7cl2uVkLJn4aUJCuufKsqVQeLZ4H9Epg1xQjakx697HvkdSIUVNXqLr2uCo+GXM
	2NKsmqYVkVDx0bPRuN9w6qu9oRCxQ31/whHO3NM4eeDLR6Yu5YE7ZTFpHD5EbHREejC7grB3Urr
	ILDJqYvQPGd4CddbIj9hxyuz7Cxd5VzvL3quPqL5FfG+46lFi6qKC1TJ9K0eniRdxmX6EKsTPrn
	bYdVmY9sSliWe3R4iweVdKkcuD2+pd2fuzpK4mIxEgwjTF/fATp1nWzBePx1U9wPw+9
X-Received: by 2002:a05:690e:4386:b0:662:bd61:f818 with SMTP id
 956f58d0204a3-66487e5bb09mr1368091d50.52.1782397658789; Thu, 25 Jun 2026
 07:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQU4PVeJpqWm3GB4BVHtbG48WvrnPJ0=s=_o5TtHMW4bg@mail.gmail.com>
 <CAFche=h-+WLUxeiq1bF49Oz8zspO4K5UFVQTGYahBF-dgYKPdQ@mail.gmail.com> <CAB__hTRzaOdc+HoCrHa3szxmCPyomB9qNmOBxFzevMvQJm-PSw@mail.gmail.com>
In-Reply-To: <CAB__hTRzaOdc+HoCrHa3szxmCPyomB9qNmOBxFzevMvQJm-PSw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 25 Jun 2026 09:27:22 -0500
X-Gm-Features: AVVi8Ce3cKSo6uglTYWWNbS5QjBd68Yn-gfrE7pZ5_SMkRZcvfgKHbLDtnfriCk
Message-ID: <CAFche=jpQvtiWMxTRE1aASTDu2B983AmLBMn+sE5xwY6f_1itA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: UGL5AVX6QDPPDURT5GJY5COY4Z2RUJBT
X-Message-ID-Hash: UGL5AVX6QDPPDURT5GJY5COY4Z2RUJBT
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: build N320 fpga image with axi_ram_fifo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UGL5AVX6QDPPDURT5GJY5COY4Z2RUJBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5114491229664589993=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:rkossler@nd.edu,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.ettus.com:from_smtp,ettus.com:email,ettus.com:url,ettus.com:from_mime,nd.edu:email,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7B3116C6A24

--===============5114491229664589993==
Content-Type: multipart/alternative; boundary="0000000000004d118e065514cb99"

--0000000000004d118e065514cb99
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

I think you can specify 2 ports in the N320 image. The only reason I can
think of to leave it as 4 is to serve as an example of how to configure it
for four ports. The N320 has a 4-port DRAM interface in the fixed logic
outside of RFNoC.

One challenge possibly related to the issues you had is that the DRAM is
very bursty. The 341 MS/s figure is an average. But it actually changes
between much higher than that rate and 0 MS/s, as it jumps between reading
and writing. This delay when the FIFO is not reading or not writing for a
given channel can lead to under/overflows. So, it's important to have
enough additional buffering in the design to account for that. Also, the
latency through the DRAM (from the FIFO input to the output) is longer than
that of most blocks. Consequently, another issue people encounter is not
setting the transmit time far enough into the future. Other than that, it
should work.

Wade

On Thu, Jun 11, 2026 at 9:06=E2=80=AFAM Rob Kossler <rkossler@nd.edu> wrote=
:

> Thanks Wade,
> Thanks for the link to the RFNoC FAQ - I had not seen that.  One question=
:
> In my original email, I had pasted some code from the stock N320 BIST yam=
l
> which included 4 DMA FIFO ports (but then specifically indicated that the
> latter 2 were not used).  But the FAQ indicates that you could simply
> choose a lower number of ports than the max.  So, is there any reason why
> the stock N320 BIST yaml specifies 4 ports (with 2 un-connected) rather
> than just 2 ports?
>
> In the period in between our emails, I was unable to get my "repeater
> application" working using the DMA FIFO so I simply removed it.  By
> removing it, my application included the following blocks statically link=
ed:
>     Radio0-rx =3D> DDC0 =3D> my-time-stamp-adjust =3D> DUC1 =3D> Radio1-T=
x
>
> This is a single-channel repeater chain where the block
> "my-time-stamp-adjust" simply adds a user-controllable integer to the
> receive time stamp so that the samples will not be late when they arrive =
at
> the transmit radio.  There was apparently enough "fifo buffering" in the
> NOC shells or otherwise that would allow me to set my time-stamp adjustme=
nt
> anywhere from 8100 to 18100 samples (with no DDC decimation / DUC
> interpolation) and avoid all Lates/Overruns.
>
> I am still curious why I couldn't get it working with the DMA FIFO.  The
> FAQ indicates throughput of 341 MS/s for single channel operation. This
> should be sufficient for my case of 250 MS/s. I know that you mentioned
> latency/delay. In my application it seems that latency/delay "variation" =
is
> all that matters.  In other words, I can compensate for any fixed
> latency/delay as long as I set my time-stamp-adjust value large enough th=
at
> the samples won't be late.  But, if this latency/delay is varying then
> perhaps this could be an issue.  Let me know if you have any thoughts on
> using the DMA FIFO in this application.
> Thanks.
> Rob
>
> On Wed, Jun 10, 2026 at 4:26=E2=80=AFPM Wade Fife <wade.fife@ettus.com> w=
rote:
>
>> Hi Rob,
>>
>> Sorry for the late reply. On the N320 you have 2 GiB of space that you
>> can divide as you like. Each channel gets a memory region defined by tho=
se
>> parameters. The FIFO_ADDR_BASE is the start address of each buffer and
>> FIFO_ADDR_MASK is effectively the size minus 1. The FIFO_ADDR_MASK must =
be
>> a power of 2 minus 1 (i.e., all ones). Set FIFO_ADDR_BASE to 0 for every
>> bit where the mask is 1. Take care not to create overlapping regions for
>> channels you intend to use. Otherwise, the data for one channel could
>> overwrite the data in another channel.
>>
>> If you want one maximum sized FIFO buffer, you can set the mask to
>> 31'7FFFFFFF to get a 2 GiB region. If you set each channel the same, the=
n
>> you've assigned the same memory space to all four channels. This is fine=
 if
>> you only intend to use one channel.
>>
>>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h00000000,
>> 31'h00000000}"
>>       FIFO_ADDR_MASK: "{31'h7FFFFFFF, 31'h7FFFFFFF, 31'h7FFFFFFF, 31'
>> h7FFFFFFF}"
>>
>> If you want two maximum sized buffers, I think your example is correct
>> assuming you only intend to use the first and second channels.
>>
>>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h40000000,
>> 31'h00000000}"
>>       FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
>> 31'h3FFFFFFF}"
>>
>> If you want four maximum sized buffers, it would be:
>>
>>       FIFO_ADDR_BASE: "{31'h60000000, 31'h40000000, 31'h20000000,
>> 31'h00000000}"
>>       FIFO_ADDR_MASK: "{31'h1FFFFFFF, 31'h1FFFFFFF, 31'h1FFFFFFF, 31'
>> h1FFFFFFF}"
>>
>> The throughput is highly application-dependent. It will vary based on th=
e
>> number of channels and how much those channels contend for memory at the
>> same time. But we have some benchmark numbers here that will give you a
>> rough idea:
>>
>>
>> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_DRAM_data_rat=
es_can_I_expect_on_each_USRP.3F
>>
>> If you're looking for bytes per second, multiply the numbers in that
>> table by 4.
>>
>> One common gotcha is DRAM latency/delay. You may need to tweak the
>> IN_FIFO_SIZE and/or OUT_FIFO_SIZE when connecting DRAM directly to a rad=
io
>> block. It's possible to see under/overruns in the radio even if the DRAM=
 is
>> "fast enough" due to DRAM latency, particularly when it cycles between
>> multiple channels. But in your case, connecting DRAM to the DDC/DUC, you=
'll
>> probably be OK as long as the timestamp delay you add is longer than the
>> total latency through the DRAM.
>>
>> Wade
>>
>> On Thu, May 28, 2026 at 9:39=E2=80=AFAM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I am building an N320 image that is basically a repeater with static
>>> rfnoc links as follows:
>>>   radio0 =3D> ddc0 =3D> my-timestamp-adjust =3D> axi_ram_fifo =3D> duc1=
 =3D> radio1
>>>
>>> I have a question about how to use the parameters of the axi_ram_fifo
>>> block in order to maximize the FIFO depth.  From the N320 BIST yml, I f=
ound
>>> the following:
>>>       # These parameters match the memory interface on the N3XX
>>>       NUM_PORTS: 4
>>>       MEM_DATA_W: 64
>>>       MEM_ADDR_W: 31
>>>       # Create four non-overlapping 32 MB buffers by default
>>>       FIFO_ADDR_BASE: "{31'h06000000, 31'h04000000, 31'h02000000,
>>> 31'h00000000}"
>>>       FIFO_ADDR_MASK: "{31'h01FFFFFF, 31'h01FFFFFF, 31'h01FFFFFF,
>>> 31'h01FFFFFF}"
>>>       MEM_CLK_RATE: "303819444" # 166.666666 MHz * 21.875 / 4 / 3 =3D
>>> 303.819444 MHz
>>>
>>> This indicates that there are 4 ports (later in the yml, ports 3 and 4
>>> are explicitly not connected).  My question is: how do I configure
>>> FIFO_ADDR_BASE and FIFO_ADDR_MASK in order to maximize the FIFO capacit=
y?
>>>
>>> For the case of only needing one FIFO buffer, would this be correct?
>>>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h00000000,
>>> 31'h00000000}"
>>>       FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
>>> 31'h3FFFFFFF}"
>>>
>>> For the case of only needing two FIFO buffers, would this be correct?
>>>       FIFO_ADDR_BASE: "{31'h00000000, 31'h00000000, 31'h40000000,
>>> 31'h00000000}"
>>>       FIFO_ADDR_MASK: "{31'h3FFFFFFF, 31'h3FFFFFFF, 31'h3FFFFFFF,
>>> 31'h3FFFFFFF}"
>>>
>>> My other question is related to what is the maximum axi_ram_fifo
>>> throughput?  Can I run with one port (in & out) at full streaming rate =
of
>>> 250 MS/s?  Does the RAM bandwidth support this rate?  How about if I ha=
ve 2
>>> ports (in & out) - what is the maximum rate?
>>>
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000004d118e065514cb99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<br><br>I think you can specify 2 ports in the N320=
 image. The only reason I can think of to leave it as 4 is to serve as an e=
xample of how to configure it for four ports. The N320 has a 4-port DRAM in=
terface in the fixed logic outside of RFNoC.<br><br><div>One challenge poss=
ibly related to the issues you had is that the DRAM is very bursty. The 341=
 MS/s figure is an average. But it actually changes between much higher tha=
n that rate and 0 MS/s, as it jumps between reading and writing. This delay=
 when the FIFO is not reading or not writing=C2=A0for a given channel can l=
ead to under/overflows. So, it&#39;s important to have enough additional bu=
ffering in the design to account for that. Also, the latency through the DR=
AM (from the FIFO input to the output) is longer than that of most blocks. =
Consequently, another issue people encounter is not setting the transmit ti=
me far enough into the future. Other than that, it should work.</div><div><=
br></div>Wade</div><br><div class=3D"gmail_quote gmail_quote_container"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 11, 2026 at 9:06=E2=80=AFAM =
Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div>Thanks Wade,</div><div>Thanks for the link t=
o the RFNoC FAQ - I had not seen that.=C2=A0 One question: In my original e=
mail, I had pasted some code from the stock N320 BIST yaml which included 4=
 DMA FIFO ports (but then specifically indicated that the latter 2 were not=
 used).=C2=A0 But the FAQ indicates that you could simply choose a lower nu=
mber of ports than the max.=C2=A0 So, is there any reason why the stock N32=
0 BIST yaml specifies 4 ports (with 2 un-connected) rather than just 2 port=
s?</div><div><br></div><div>In the period in between our emails, I was unab=
le to get my &quot;repeater application&quot; working using the DMA FIFO so=
 I simply removed it.=C2=A0 By removing it, my application included the fol=
lowing blocks statically linked:</div><div>=C2=A0 =C2=A0 Radio0-rx =3D&gt; =
DDC0 =3D&gt; my-time-stamp-adjust =3D&gt; DUC1 =3D&gt; Radio1-Tx</div><div>=
<br></div><div>This is a single-channel repeater chain where the block &quo=
t;my-time-stamp-adjust&quot; simply adds a user-controllable integer to the=
 receive time stamp=C2=A0so that the samples will not be late when they arr=
ive at the transmit radio.=C2=A0 There was apparently enough &quot;fifo buf=
fering&quot; in the NOC shells or otherwise that would allow me to set my t=
ime-stamp adjustment anywhere=C2=A0from 8100 to 18100 samples (with no DDC =
decimation / DUC interpolation) and avoid all Lates/Overruns.</div><div><br=
></div><div>I am still curious why I couldn&#39;t get it working with the D=
MA FIFO.=C2=A0 The FAQ indicates throughput of 341 MS/s for single channel =
operation. This should be sufficient for my case of 250 MS/s. I know that y=
ou mentioned latency/delay. In my application it seems that latency/delay &=
quot;variation&quot; is all that matters.=C2=A0 In other words, I can compe=
nsate for any fixed latency/delay as long as I set my time-stamp-adjust val=
ue large enough that the samples won&#39;t be late.=C2=A0 But, if this late=
ncy/delay is varying then perhaps this could be an issue.=C2=A0 Let me know=
 if you have any thoughts on using the DMA FIFO in this application.</div><=
div>Thanks.</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Jun 10, 2026 at 4:26=E2=80=AFPM Wade Fife =
&lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Sorry for the l=
ate reply. On the N320 you have 2 GiB of space that you can divide as you l=
ike. Each channel gets a memory region defined by those parameters. The FIF=
O_ADDR_BASE is the start address of each buffer and FIFO_ADDR_MASK is effec=
tively the size minus 1. The FIFO_ADDR_MASK must be a power of 2 minus 1 (i=
.e., all ones). Set FIFO_ADDR_BASE to 0 for every bit where the mask is 1. =
Take care not to create overlapping regions for channels you intend to use.=
 Otherwise, the data for one channel could overwrite the data in another ch=
annel.</div><div><br></div><div>If you want one maximum sized FIFO buffer, =
you can set the mask to 31&#39;7FFFFFFF to get a 2 GiB region. If you set e=
ach channel the same, then you&#39;ve assigned the same memory space to all=
 four channels. This is fine if you only intend to use one channel.</div><d=
iv><br><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR=
_BASE: &quot;{31&#39;h00000000, 31&#39;h00000000, 31&#39;h00000000, 31&#39;=
h00000000}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h7FF=
FFFFF, 31&#39;</span><span style=3D"font-family:monospace">h7FFFFFFF</span>=
<span style=3D"font-family:monospace">, 31&#39;</span><span style=3D"font-f=
amily:monospace">h7FFFFFFF</span><span style=3D"font-family:monospace">, 31=
&#39;</span><span style=3D"font-family:monospace">h7FFFFFFF</span><span sty=
le=3D"font-family:monospace">}&quot;</span>

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
t_on_each_USRP.3F" target=3D"_blank">https://kb.ettus.com/RFNoC_Frequently_=
Asked_Questions#What_DRAM_data_rates_can_I_expect_on_each_USRP.3F</a></div>=
<div><br></div><div>If you&#39;re looking for bytes per second, multiply th=
e numbers in that table by 4.</div><div><br></div><div>One common gotcha is=
 DRAM latency/delay. You may need to tweak the IN_FIFO_SIZE and/or OUT_FIFO=
_SIZE when connecting DRAM directly to a radio block. It&#39;s possible to =
see under/overruns in the radio even if the DRAM is &quot;fast enough&quot;=
 due to DRAM latency, particularly when it cycles between multiple channels=
. But in your case, connecting DRAM to the DDC/DUC, you&#39;ll probably be =
OK as long as the timestamp delay you add is longer than the total latency =
through the DRAM.</div><div><br></div><div>Wade</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 28, 2026=
 at 9:39=E2=80=AFAM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hi,</div><div>I am building an N320 image that is basically a=
 repeater with static rfnoc links as follows:</div><div><span style=3D"font=
-family:monospace">=C2=A0 radio0 =3D&gt; ddc0 =3D&gt; my-timestamp-adjust =
=3D&gt; axi_ram_fifo =3D&gt; duc1 =3D&gt; radio1</span></div><div><br></div=
><div>I have a question about how to use the parameters of the axi_ram_fifo=
 block in order to maximize the FIFO depth.=C2=A0 From the N320 BIST yml, I=
 found the following:</div><div><span style=3D"font-family:monospace">=C2=
=A0 =C2=A0 =C2=A0 # These parameters match the memory interface on the N3XX=
<br>=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 4<br>=C2=A0 =C2=A0 =C2=A0 MEM_DATA_W: 6=
4<br>=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 31<br>=C2=A0 =C2=A0 =C2=A0 # Create f=
our non-overlapping 32 MB buffers by default<br><span style=3D"background-c=
olor:rgb(255,255,0)">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#39;h06=
000000, 31&#39;h04000000, 31&#39;h02000000, 31&#39;h00000000}&quot;<br>=C2=
=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h01FFFFFF, 31&#39;h01FFFFFF=
, 31&#39;h01FFFFFF, 31&#39;h01FFFFFF}&quot;<br></span>=C2=A0 =C2=A0 =C2=A0 =
MEM_CLK_RATE: &quot;303819444&quot; # 166.666666 MHz * 21.875 / 4 / 3 =3D 3=
03.819444 MHz<br></span><br></div><div>This indicates that there are 4 port=
s (later in the yml, ports 3 and 4 are explicitly not connected).=C2=A0 My =
question is: how do I configure FIFO_ADDR_BASE and FIFO_ADDR_MASK in order =
to maximize the FIFO capacity?</div><div><br></div><div>For the case of onl=
y needing one FIFO buffer, would this be correct?</div><div><span style=3D"=
font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_BASE: &quot;{31&#39;h=
00000000, 31&#39;h00000000, 31&#39;h00000000, 31&#39;h00000000}&quot;<br>=
=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h3FFFFFFF, 31&#39;h3FFFF=
FFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;<br></span><br></div><div><di=
v>For the case of only needing two FIFO buffers, would this be correct?</di=
v><div><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR=
_BASE: &quot;{31&#39;h00000000, 31&#39;h00000000, 31&#39;h40000000, 31&#39;=
h00000000}&quot;<br>=C2=A0 =C2=A0 =C2=A0 FIFO_ADDR_MASK: &quot;{31&#39;h3FF=
FFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF, 31&#39;h3FFFFFFF}&quot;<br></spa=
n><br></div><div>My other question is related to what is the maximum axi_ra=
m_fifo throughput?=C2=A0 Can I run with one port (in &amp; out) at full str=
eaming rate of 250 MS/s?=C2=A0 Does the RAM bandwidth support this rate?=C2=
=A0 How about if I have 2 ports (in &amp; out) - what is the maximum rate?<=
/div><div><br></div><div>Rob</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</div>
</blockquote></div>

--0000000000004d118e065514cb99--

--===============5114491229664589993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5114491229664589993==--
