Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5430A39D54
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 14:25:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90E7038562A
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 08:25:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739885134; bh=pwkiY7qj86pOoCJAVoxEFyWyeyrBS1B1MylMot7UY0g=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yRe/V+r0P1gXsMGJAIkZucULqn4G8pt1cpXotsF1qV47r9kud+nUzEeSjNMbvOMvF
	 4x1BREfEhEhMWzZpuctwUrUGDECIVSXPIsxW1GZY+EGGSQEM0drDhGXadYchredkJa
	 AOrzKO0L5aXhnW15BwQfiJhNxMQypb9G/R4IiYAug1U/31nyZKGKumcc78AJbucQQn
	 lsh2Tl4WuR8CIIwPSpFnXSlMXbMRYCCJeJPZvtXaubK1izWaDx9Mlu+irm1FJK/4wu
	 lS0dXJl/R1uZaEeAkpUMWa0Ff/lgi4gOz3mLlVqTkkODfAKc0CFsBzf9UKHt7bRPE1
	 LvHx9v0lnOMOQ==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 82EB538562A
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 08:25:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="xVOnuFRG";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aaeec07b705so817776766b.2
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 05:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739885127; x=1740489927; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rRZW4SHPhUkRCg37LkEo3DrKydx5n6zwYKgHmGArNNc=;
        b=xVOnuFRGAv/TVDUPnHPPgI7753eYdsFN9yJ3Kcw1JYN+Rlymixrce1Fel0lpXt/UvN
         6JEFbV4Ix5XUWuLMXl1nns1MIOV/etRHuLJbbA1wvsnEYOSiHYu9assoLtRuJvHuVjYi
         bo7JSix/kPsIZ2AHIWlBNFZU8rN1EGYJa2QsztLIj9cUnRVefB08sm5iALfsiTv2QgIF
         RyJdc3MrHWpfi6IEKj24Ki+pF5IRIFrIGxEjVNNDSq4OZ8tNpD9t3R94vdfFe5DzaY8x
         bjCNR59TvOYe2aTSBM0xvXohxulS79+PL6WPMT/Wa305aS1ag+bAcqDXJSzyjabU6Muj
         +fRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739885127; x=1740489927;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rRZW4SHPhUkRCg37LkEo3DrKydx5n6zwYKgHmGArNNc=;
        b=Y6vgjBh4WfmXUpQfuC3Up8LVujezdKYgsIMGuJPag2CbRDY7Pzmwlmi5f/swG1+NUN
         bJ2NLRIjLnxE8pvwckXa+ta+05V/cx7g3SATAPNWjYwrAT+OmpY4z0VCaaI+WzGyJc3k
         kpoKed0fFCDJ/ruboi2blS6IJTJ32sm+BobELrCoLWVXTRNXhScqvy1QJcE1QRtKaS0c
         YUFtyhG+kqvjvEEWLmh03TUmiZSeKgP5UsgQqOvoPgkdNSkEaocwZOfn4ICk75Zhvysx
         ZpW+QPn4VOCBoT0rD3C8x9QCY5ZyXfNLIpvS+JYUrq/QdoxPOgVLtmmqc8pWhwlTGgsF
         EwVw==
X-Gm-Message-State: AOJu0Yz4m9ZAoW6EfSVTaCeEOASddAM6PaKuZAIZTAO7v3x0RmiZ1Jik
	B0bJ4W89V8zVaxginbBW7XFoPemXoylHBTT4be4GQ42jj9YoLPLEcW+ArX5h7oc3sKWGVO91Nwk
	DEN4NM2CWWPMQEKirjtrc1S8jSbrDsKhqkx+TkzPv7sDnMQLPmkg=
X-Gm-Gg: ASbGncvh/YLUBsW29NBn6JuKieUAd+omIHcWO/q2hyONg1FOWpGphINSCrIxR5V2UU4
	tll5+mxCbqSxgpRMgFn0guLpBf6r36jYdAF32/palKwncX8KzrR+pvtZ7MYJVqBOZSDPpPR1LZu
	715Khl0hnJkBRT9fTXhaJyL93uu9Bb
X-Google-Smtp-Source: AGHT+IHRytX+KdsZToujcRONXc7FnjHxwFCygKWikzFFIdzXRCAoE/QCK4HWboRYHHvxaOgfVD1QHZjiK6tUHe7Bqak=
X-Received: by 2002:a17:907:2d22:b0:ab7:dec1:b353 with SMTP id
 a640c23a62f3a-abb70de289amr1585320666b.49.1739885127379; Tue, 18 Feb 2025
 05:25:27 -0800 (PST)
MIME-Version: 1.0
References: <IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI@lists.ettus.com>
In-Reply-To: <IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 18 Feb 2025 14:25:15 +0100
X-Gm-Features: AWEUYZnLl3UTX3YbgUCSdU6dYexxDMIEf9t-pU4FgN3pvX4elqGVGkcPnbUdqY0
Message-ID: <CAFOi1A7yjiaOvYmam-O0eRz0bwmychFUVgN0jUTrUt_-zuznDQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: OYCUSW33FRKUIFSBVCXIYJ5XMNBYWZ7U
X-Message-ID-Hash: OYCUSW33FRKUIFSBVCXIYJ5XMNBYWZ7U
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OYCUSW33FRKUIFSBVCXIYJ5XMNBYWZ7U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6006322646861038044=="

--===============6006322646861038044==
Content-Type: multipart/alternative; boundary="000000000000f7cf62062e6a9200"

--000000000000f7cf62062e6a9200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Like David says, nothing you're doing to the radio should affect the
peeks/pokes of your block.

But if you're seeing op_timeout being thrown, then that's also not the
block controller timing out. Maybe you have a deadlock in your application?

--M

On Mon, Feb 17, 2025 at 5:07=E2=80=AFPM <cyberphox@gmail.com> wrote:

> Hi David,
>
> At the start where we initialise our siggen block there this snippet of
> code:
> ------------------------------
>
> std::cout << "MB Clock Source: " << graph->get_mb_controller(0)->get_cloc=
k_source() << std::endl;
>
> std::cout << "MB Time Source: " << graph->get_mb_controller(0)->get_time_=
source() << std::endl;
>
> std::cout << "MB Sync Source: " << graph->get_mb_controller(0)->get_sync_=
source().to_pp_string() << std::endl;
>
> std::cout << "MB Ref lock status: " << graph->get_mb_controller(0)->get_s=
ensor("ref_locked").to_pp_string() << std::endl;
>
> std::cout << graph->get_mb_controller(0)->get_sensor("gps_locked").to_pp_=
string() << std::endl;
>
> // Initialise the USRP time to zero on the next 1 PPS
>
> graph->get_mb_controller(0)->get_timekeeper(0)->set_time_next_pps(uhd::ti=
me_spec_t(0.0));
>
> // Call this to synchronise all the RFNoC devices (needed for phase align=
ment?)
>
> bool synchronised =3D graph->synchronize_devices(uhd::time_spec_t(2.0), f=
alse);
>
>
> ------------------------------
>
> Then when setting up the PLL's, to try and get phase coherence.
> ------------------------------
>
>
>
> const uhd::time_spec_t lastPPS =3D linux_uhd::get_graph()->get_mb_control=
ler(0)->get_timekeeper(0)->get_time_last_pps();
> const uhd::time_spec_t now =3D linux_uhd::get_graph()->get_mb_controller(=
0)->get_timekeeper(0)->get_time_now();
> const uhd::time_spec_t span =3D uhd::time_spec_t(1.0);
>
> // Specify that the tune should occur aligned with the next 1 PPS
> const uhd::time_spec_t command_time =3D (lastPPS + span);
>
> // Clear any previous timed commands
> radio_ctrl[radio_id]->clear_command_time(0);
>
> // Set the time for the LO tune to occur
> radio_ctrl[radio_id]->set_command_time(command_time, 0);
>
> // Set the LO frequency in Hz
> actual_lo_frequency =3D radio_ctrl[radio_id]->set_tx_frequency(....
>
>
>
> ------------------------------
>
> I am not sure if this could affect the peek and pokes
>
>
> thank you
>
> Marino
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f7cf62062e6a9200
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Like David says, nothing you&#39;re doing to the radi=
o should affect the peeks/pokes of your block.</div><div><br></div><div>But=
 if you&#39;re seeing op_timeout being thrown, then that&#39;s also not the=
 block controller timing out. Maybe you have a deadlock in your application=
?</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gma=
il_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 17, 2=
025 at 5:07=E2=80=AFPM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberphox=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hi David,</p><p>At the start where we initialise our siggen b=
lock there this snippet of code:</p><div><hr></div><pre><code>std::cout &lt=
;&lt; &quot;MB Clock Source: &quot; &lt;&lt; graph-&gt;get_mb_controller(0)=
-&gt;get_clock_source() &lt;&lt; std::endl;</code></pre><pre><code>std::cou=
t &lt;&lt; &quot;MB Time Source: &quot; &lt;&lt; graph-&gt;get_mb_controlle=
r(0)-&gt;get_time_source() &lt;&lt; std::endl;</code></pre><pre><code>std::=
cout &lt;&lt; &quot;MB Sync Source: &quot; &lt;&lt; graph-&gt;get_mb_contro=
ller(0)-&gt;get_sync_source().to_pp_string() &lt;&lt; std::endl;</code></pr=
e><pre><code>std::cout &lt;&lt; &quot;MB Ref lock status: &quot; &lt;&lt; g=
raph-&gt;get_mb_controller(0)-&gt;get_sensor(&quot;ref_locked&quot;).to_pp_=
string() &lt;&lt; std::endl;</code></pre><pre><code>std::cout &lt;&lt; grap=
h-&gt;get_mb_controller(0)-&gt;get_sensor(&quot;gps_locked&quot;).to_pp_str=
ing() &lt;&lt; std::endl;</code></pre><pre><code>// Initialise the USRP tim=
e to zero on the next 1 PPS</code></pre><pre><code>graph-&gt;get_mb_control=
ler(0)-&gt;get_timekeeper(0)-&gt;set_time_next_pps(uhd::time_spec_t(0.0));<=
/code></pre><pre><code>// Call this to synchronise all the RFNoC devices (n=
eeded for phase alignment?)</code></pre><pre><code>bool synchronised =3D gr=
aph-&gt;synchronize_devices(uhd::time_spec_t(2.0), false);

<br></code></pre><div><hr></div><p>
Then when setting up the PLL&#39;s, to try and get phase coherence.
<br></p><div><hr></div><pre><code>

const uhd::time_spec_t lastPPS =3D linux_uhd::get_graph()-&gt;get_mb_contro=
ller(0)-&gt;get_timekeeper(0)-&gt;get_time_last_pps();
const uhd::time_spec_t now =3D linux_uhd::get_graph()-&gt;get_mb_controller=
(0)-&gt;get_timekeeper(0)-&gt;get_time_now();
const uhd::time_spec_t span =3D uhd::time_spec_t(1.0);

// Specify that the tune should occur aligned with the next 1 PPS
const uhd::time_spec_t command_time =3D (lastPPS + span);

// Clear any previous timed commands
radio_ctrl[radio_id]-&gt;clear_command_time(0);

// Set the time for the LO tune to occur
radio_ctrl[radio_id]-&gt;set_command_time(command_time, 0);

// Set the LO frequency in Hz
actual_lo_frequency =3D radio_ctrl[radio_id]-&gt;set_tx_frequency(....


<br></code></pre><div><hr></div><p>I am not sure if this could affect the p=
eek and pokes</p><p><br></p><p>thank you </p><p>Marino</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f7cf62062e6a9200--

--===============6006322646861038044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6006322646861038044==--
