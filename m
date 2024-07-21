Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A20F9384A0
	for <lists+usrp-users@lfdr.de>; Sun, 21 Jul 2024 14:52:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDFBA38581B
	for <lists+usrp-users@lfdr.de>; Sun, 21 Jul 2024 08:52:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721566349; bh=8s+uA882zPA1g38L86zi40n4KQcvpuFD5b9VDhFgvsY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BGW/4+g94j2WId8KnGMAyz3zM9XOaBqCvDRtbzjrvYMBWLrMCxG1lTWvYOVSd2ArB
	 FZTyeHk29+du77wJMFUBF/Pk6PTWtFRg5XCwb6oI4KkweUw56vxK1H7juYJftTJZg3
	 QZftVmffAnuw98sXNKQT0h9QYXB7AWqxn0DOL5OLR6mb0v6j77pFI8MsQLod/+TAto
	 06JocHS6p4LWvXmIPQaTG/Eh83+nsmGm/nl/jXafQy3c/RL0COKgHZgFSnEtrB3KGA
	 HZb3dbPnehOIqcyMI5nmYnqb60fhfU9rxMSo374e4JlSPg8jtIrwZ55lLaXx2JgaWl
	 SjwmSBROrcTMg==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A99E38549A
	for <usrp-users@lists.ettus.com>; Sun, 21 Jul 2024 08:51:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PQ4UzppY";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-79f15e7c89cso196559885a.1
        for <usrp-users@lists.ettus.com>; Sun, 21 Jul 2024 05:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721566310; x=1722171110; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b5vpFNfMD4EGYYezXQZvj/OsA0GB0/MgacKuYChIR6c=;
        b=PQ4UzppYg5JixEZ5odqFw0n9PlwfAkbC9mekfvHsNzzI3zyWiYlG/pib0oNXgyXO+B
         hplviOgSk1z7HxuIHiRwuY9+mHpipd4aF5pmm9vpI30s8Sfo/NDMYvgNNqtfWHDncAN1
         sOP03QL8rtk8YsXyOordMa+r5hjIlCs31mDKfL5H+AMOQdPU2MT+E0kNmBEohtYMuQGO
         hDq8rz6xFJIrC/KMQOvb+3O96Pe3XkhmPQFcUdoGP+7k8338CXy55hZW0+TEXcrWJoFC
         GDQe3u45sB2vol3/Y3VXlIOaHzsb9OCKla6RyZUtr4oE8csz+qqUFJY4iODCbhj5IkuZ
         3RRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721566310; x=1722171110;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=b5vpFNfMD4EGYYezXQZvj/OsA0GB0/MgacKuYChIR6c=;
        b=FhadaZm756CtyZjjuXpnbekNJ0OgU7G0R5ueG4nUKCi45V32UkCypebDhh76xR6y71
         lGb2Jj8z5/r0aFqFnTsFdkn9ssUOYviSkhID4P+m4BjZyXs1kMIi9bKwqEhVP/b+lLZq
         9T/75U8aDG/3hM629qlDQX5U8v3JFGrFqcszrYWaXLKIGdWRlLlSFmYl1BCAw5PLAlym
         TOeziJc2h6bJuVpI6NfxQr7Wnfj/IM+AlOJ+61OOZhXqfYbO/YuijAE5zdg8QqRu1Elz
         0nOQjWNiFcHkLRfquiJmTbU5T1P6Mp3HrBAKA18vPh9pbSLQvo4Q4nqZ8x+umL/A7kD+
         4Gtw==
X-Gm-Message-State: AOJu0YwPjdQxwD2RWd4BFgf+X75KyTe2PCMF5M8XIHbLXXNpwCyMn9e8
	70HcWL3zCQUsUpClevA30AjDKXWo1MBUvDy/Rc0/bNc9yXRwA2nL6wlVFQ==
X-Google-Smtp-Source: AGHT+IERJj9MkII5kZZkWlVU+r8JBcshqWEuyaBNBuwiD7JaHE8vQc58cjEI9zMhCo1gXCW6WaS+6w==
X-Received: by 2002:ad4:5b88:0:b0:6b5:475:d1ad with SMTP id 6a1803df08f44-6b95a74d25fmr54644016d6.34.1721566309781;
        Sun, 21 Jul 2024 05:51:49 -0700 (PDT)
Received: from [192.168.2.170] (bas1-toronto12-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6b963f2ba92sm11826466d6.5.2024.07.21.05.51.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jul 2024 05:51:49 -0700 (PDT)
Message-ID: <82dcadcf-c91e-4a20-8183-908b9e9bc754@gmail.com>
Date: Sun, 21 Jul 2024 08:51:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE@lists.ettus.com>
Message-ID-Hash: HMH3V5X32ZTONPDTB2TT62ZTF4VXN4XY
X-Message-ID-Hash: HMH3V5X32ZTONPDTB2TT62ZTF4VXN4XY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMH3V5X32ZTONPDTB2TT62ZTF4VXN4XY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5366337269434747349=="

This is a multi-part message in MIME format.
--===============5366337269434747349==
Content-Type: multipart/alternative;
 boundary="------------vibk0ay5UnxlXQh5d0tdvBdz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------vibk0ay5UnxlXQh5d0tdvBdz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/07/2024 14:37, cjohnson@serranosystems.com wrote:
>
> Dear Ettus Support Team,
>
> I hope this message finds you well. We are currently using the X310=20
> (FPGA 39.2) with a 10GigE interface, handling 1996 samples (4 bytes=20
> each) per packet. Despite following all recommended setup tips and=20
> tricks for the USRP and our Linux box, we occasionally encounter =E2=80=
=9CU=E2=80=9D=20
> (underflow) indicators. Below are additional setup notes for your=20
> reference.
>
>
>       Our Questions and Requests:
>
> 1.
>
>     *FPGA Rx Buffer Size:*
>
>      *
>
>         What is the FPGA Rx buffer size on the X310?
>
>      *
>
>         I understand that this value cannot be set from the host side
>         and requires changes to the FPGA source. Could you confirm
>         this understanding?
>
> 2.
>
>     *Setting and Getting Host Parameters:*
>
>      *
>
>         We are interested in setting and getting the values of three
>         specific host parameters: |num_send_frames|,
>         |send_frame_size|, and |send_buff_size|.
>
>      *
>
>         The Ettus documentation for "Transport Notes" mentions that
>         values can be specified using device arguments, which
>         configure the transport, overriding the default values chosen
>         by UHD.
>
>      *
>
>         How do we properly set and verify these values? The UHD API
>         does not provide a direct method to retrieve these parameters,
>         making it unclear if they are set correctly.
>
They are set as *device arguments*, NOT *stream arguments*.=C2=A0 See any=
 of=20
the examples that take a --args
 =C2=A0 parameters.

https://files.ettus.com/manual/page_configuration.html

It is true that there is no API that allows you to query their state.


> 1.
>      *
>
>         For example, using |stream_args.args["foo"] =3D "512";| does no=
t
>         indicate an error, so setting |num_send_frames| in the same
>         way does not guarantee that the value is applied. How can we
>         ensure these settings are correctly applied?
>
> 2.
>
>     *Suggestions for Mitigating Underflow ("U") Issues:*
>
>      *
>
>         Could you provide suggestions on how to adjust our
>         configuration or other potential fixes to eliminate the "U"
>         indicators?
>
>
>       Setup Notes:
>
>  *
>
>     *Operating System:* Ubuntu 20.04 Linux with Real Time scheduler at
>     a very high priority (-81).
>
>  *
>
>     *Hardware Specifications:*
>
>      o
>
>         64 cores / 4 GPUs / >250GB RAM running at 3.5 GHz.
>
>      o
>
>         Example analysis for CPU 63:
>
>         |yamlCopy codedriver: intel_cpufreq CPUs which run at the same
>         hardware frequency: 63 CPUs which need to have their frequency
>         coordinated by software: 63 maximum transition latency: 20.0
>         us. hardware limits: 800 MHz - 3.50 GHz available cpufreq
>         governors: conservative, ondemand, userspace, powersave,
>         performance, schedutil current policy: frequency should be
>         within 800 MHz and 3.50 GHz. The governor "performance" may
>         decide which speed to use within this range. current CPU
>         frequency is 3.50 GHz. |
>
>  *
>
>     *Software Settings:*
>
>      o
>
>         Based on your recommendations, we
>
>      o
>
>         See thread
>         https://lists.ettus.com/empathy/thread/P5LALBA6HSLEDTND4Z6IGTSZ=
TEG3P5GX
>
>      o
>
>         =E2=80=9CFor the first version can you try setting has_time_spe=
c to
>         false after the
>         first packet is sent, and don't bother to set the time_spec on
>         subsequent
>         packets within a burst? The time_spec should really only be
>         for the first
>         packet. The radio will ignore the timestamp on the subsequent
>         packets
>         within a burst, and I noticed we set has_time_spec to false
>         after the first
>         packet in our benchmark_rate example.=E2=80=9D
>
>      o
>
>         https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tric=
ks
>         , not using DPDK.
>
> Thank you for your assistance and support. We look forward to your=20
> guidance on these issues.
>
>
Given that you have done all the above, and the performance of your=20
system, the only other thing to try is DPDK, assuming
 =C2=A0 that you have a network card that can support DPDK.

>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------vibk0ay5UnxlXQh5d0tdvBdz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/07/2024 14:37,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Dear Ettus Support Team,</p>
      <p>I hope this message finds you well. We are currently using the
        X310 (FPGA 39.2) with a 10GigE interface, handling 1996 samples
        (4 bytes each) per packet. Despite following all recommended
        setup tips and tricks for the USRP and our Linux box, we
        occasionally encounter =E2=80=9CU=E2=80=9D (underflow) indicators=
. Below are
        additional setup notes for your reference.</p>
      <h3>Our Questions and Requests:</h3>
      <ol>
        <li>
          <p><strong>FPGA Rx Buffer Size:</strong></p>
          <ul>
            <li>
              <p>What is the FPGA Rx buffer size on the X310?</p>
            </li>
            <li>
              <p>I understand that this value cannot be set from the
                host side and requires changes to the FPGA source. Could
                you confirm this understanding?</p>
            </li>
          </ul>
        </li>
        <li>
          <p><strong>Setting and Getting Host Parameters:</strong></p>
          <ul>
            <li>
              <p>We are interested in setting and getting the values of
                three specific host parameters: <code>num_send_frames</co=
de>,
                <code>send_frame_size</code>, and <code>send_buff_size</c=
ode>.</p>
            </li>
            <li>
              <p>The Ettus documentation for "Transport Notes" mentions
                that values can be specified using device arguments,
                which configure the transport, overriding the default
                values chosen by UHD.</p>
            </li>
            <li>
              <p>How do we properly set and verify these values? The UHD
                API does not provide a direct method to retrieve these
                parameters, making it unclear if they are set correctly.<=
/p>
            </li>
          </ul>
        </li>
      </ol>
    </blockquote>
    They are set as *device arguments*, NOT *stream arguments*.=C2=A0 See=
 any
    of the examples that take a --args<br>
    =C2=A0 parameters.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_configuration.html">https://files.ettus.com/manual/page_configu=
ration.html</a><br>
    <br>
    It is true that there is no API that allows you to query their
    state.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE@lists.ettus.com">
      <ol>
        <li>
          <ul>
            <li>
              <p>For example, using <code>stream_args.args["foo"] =3D
                  "512";</code> does not indicate an error, so setting <c=
ode>num_send_frames</code>
                in the same way does not guarantee that the value is
                applied. How can we ensure these settings are correctly
                applied?</p>
            </li>
          </ul>
        </li>
        <li>
          <p><strong>Suggestions for Mitigating Underflow ("U") Issues:</=
strong></p>
          <ul>
            <li>
              <p>Could you provide suggestions on how to adjust our
                configuration or other potential fixes to eliminate the
                "U" indicators?</p>
            </li>
          </ul>
        </li>
      </ol>
      <h3>Setup Notes:</h3>
      <ul>
        <li>
          <p><strong>Operating System:</strong> Ubuntu 20.04 Linux with
            Real Time scheduler at a very high priority (-81).</p>
        </li>
        <li>
          <p><strong>Hardware Specifications:</strong></p>
          <ul>
            <li>
              <p>64 cores / 4 GPUs / &gt;250GB RAM running at 3.5 GHz.</p=
>
            </li>
            <li>
              <p>Example analysis for CPU 63:</p>
              <pre><code>yamlCopy codedriver: intel_cpufreq
CPUs which run at the same hardware frequency: 63
CPUs which need to have their frequency coordinated by software: 63
maximum transition latency: 20.0 us.
hardware limits: 800 MHz - 3.50 GHz
available cpufreq governors: conservative, ondemand, userspace, powersave=
, performance, schedutil
current policy: frequency should be within 800 MHz and 3.50 GHz.
                The governor "performance" may decide which speed to use =
within this range.
current CPU frequency is 3.50 GHz.

</code></pre>
            </li>
          </ul>
        </li>
      </ul>
      <ul>
        <li>
          <p><strong>Software Settings:</strong></p>
          <ul>
            <li>
              <p>Based on your recommendations, we </p>
            </li>
            <li>
              <p>See thread
                <a class=3D"moz-txt-link-freetext" href=3D"https://lists.=
ettus.com/empathy/thread/P5LALBA6HSLEDTND4Z6IGTSZTEG3P5GX">https://lists.=
ettus.com/empathy/thread/P5LALBA6HSLEDTND4Z6IGTSZTEG3P5GX</a></p>
            </li>
            <li>
              <p>=E2=80=9CFor the first version can you try setting
                has_time_spec to false after the<br>
                first packet is sent, and don't bother to set the
                time_spec on subsequent<br>
                packets within a burst? The time_spec should really only
                be for the first<br>
                packet. The radio will ignore the timestamp on the
                subsequent packets<br>
                within a burst, and I noticed we set has_time_spec to
                false after the first<br>
                packet in our benchmark_rate example.=E2=80=9D</p>
            </li>
            <li>
              <p><a class=3D"moz-txt-link-freetext" href=3D"https://kb.et=
tus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.co=
m/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>
                , not using DPDK.</p>
            </li>
          </ul>
        </li>
      </ul>
      <p>Thank you for your assistance and support. We look forward to
        your guidance on these issues.</p>
      <p><br>
      </p>
    </blockquote>
    Given that you have done all the above, and the performance of your
    system, the only other thing to try is DPDK, assuming<br>
    =C2=A0 that you have a network card that can support DPDK.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:QIyvCHwp8kBVi1TvJgnrcn2x06Y6cMIemA86rwFCOyE@lists.ettus.com">
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
    <br>
  </body>
</html>

--------------vibk0ay5UnxlXQh5d0tdvBdz--

--===============5366337269434747349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5366337269434747349==--
