Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 274EE63C88
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2019 22:10:49 +0200 (CEST)
Received: from [::1] (port=39212 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hkwRp-0002wf-AG; Tue, 09 Jul 2019 16:10:45 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:33284)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hkwRl-0002mM-NI
 for usrp-users@lists.ettus.com; Tue, 09 Jul 2019 16:10:41 -0400
Received: by mail-qk1-f171.google.com with SMTP id r6so137178qkc.0
 for <usrp-users@lists.ettus.com>; Tue, 09 Jul 2019 13:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=r4JvARt1OHjw2KuKfAcEdZz2C/XDECewM4lDE562l/Y=;
 b=cFhWClpT9IeadZijTgidVuVEjoMWyTEiTf3KzFKQ1DRImnjVCULn5ojuMkeVcfLVnm
 G1bqT4JtbXhbHuh+Mvg0BdMAFb6tiE04Y8NxoDDRbMSB/RTtrhL/xGD00GkKZy6jXY2g
 OfTPLjPm4RV332RSN/ILB9SUO1xkPnmVdYVGhdeRXRhQfhlTLK2Vo1V9pXjM3v+/EO3U
 q6XPdJzhfIUhyMVOKShPrBKs+aa2uNhrpm+W/81itWWoJpq+GcqNGPtzhiLoQ/ltLGF4
 sEM+PrWre4rm4VkePjOaWc2DlWGwPlaqO6natNZ/F4dY1uMbmPNHOK7Lr7kZmAkKPgzJ
 kR+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=r4JvARt1OHjw2KuKfAcEdZz2C/XDECewM4lDE562l/Y=;
 b=XDNjF7FN1f+kL/s8lCZG1pf+1Q/2l5QV71tUR2jo60h2M+Nc7cdYn4tf3TnwWB9Duv
 cuB3BpqsnWw2Dh0kYfklX5/PSmGIjFunWszW8J/cGfRnoYWvfQdnMIhuH/1Faz3al800
 QlMBu4ZkpgBw2VmykIeysXVhx2ID5o4cDuC4MTmIMKxejr1lFcqHDlCGHNfoyzJJU4lx
 bOCEvBSv7tDyZP04VSUMggGlxGsjFAzCb5qEyvErWziLFJYz5oZ9yIGUkBeURjcoUOfx
 Tog8q+czBVMoHNEY2p5LWg2e5JBd6JNVMNKWiQc7vYCTF7dX05VW36TDOw3FV1gulnay
 pbYg==
X-Gm-Message-State: APjAAAVbJbKSYF+WM7vfHi51eqyPKz8qM/UyLUEzMXsT/EEUUkLoReO5
 1YTkvMfQdmm3huFE+CijTu4RKVSo
X-Google-Smtp-Source: APXvYqyh3kmDqRaSgORlq3a+D0coh5q5Gzw71uqz2s3gSdmxJ9Hh2JZDlJgEbvKNDTiZ9LDrSfF6EA==
X-Received: by 2002:a05:620a:16d6:: with SMTP id
 a22mr20372386qkn.414.1562703001070; 
 Tue, 09 Jul 2019 13:10:01 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id c74sm9539qke.128.2019.07.09.13.10.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 13:10:00 -0700 (PDT)
Message-ID: <5D24F494.6030307@gmail.com>
Date: Tue, 09 Jul 2019 16:09:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <22eff1fccc74ab3d4e16bac2f481f11e@alumnos.upm.es>
In-Reply-To: <22eff1fccc74ab3d4e16bac2f481f11e@alumnos.upm.es>
Subject: Re: [USRP-users] Zeros at beggining of samples
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
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

On 07/09/2019 06:20 AM, pablo.mdiaz via USRP-users wrote:
> Hi all,
>
> We have a X310 SDR and we are obtaining IQ samples from 4 channels. To =

> do that we created 4 buffers to store them and for debug purposes =

> write them in a file.
>
> The problem we have is that at the beginning of the buffers they =

> appear to be empty (full of zeros), the attached file contains a =

> memory dump of all the buffers.
>
> The following code is the initialization of the SDR, maybe we are =

> forgetting to initialize some parameters.
>
>     std::string device_args =3D "RIO0";
>     std::string subdev =3D "A:0 A:1 B:0 B:1";
>     std::string clock_source =3D "internal";
>
>     usrp =3D uhd::usrp::multi_usrp::make(device_args);
>     usrp->set_clock_source(clock_source);
>     usrp->set_rx_subdev_spec(subdev);
>
>     uhd::tune_request_t tune_request(freq);
>
>     for (int i =3D 0; i < CHANNELS; i++) {
>         usrp->set_rx_rate(rate,i);
>         usrp->set_rx_freq(tune_request,i);
>         usrp->set_rx_gain(gain,i);
>         usrp->set_rx_bandwidth(bw,i);
>     }
>
>     uhd::stream_args_t stream_args("fc32", "sc16");
>     stream_args.channels =3D {0, 1, 2, 3};
>     stream_args.args["spp"] =3D "512";
>     rx_stream =3D usrp->get_rx_stream(stream_args);
>     const int spp =3D rx_stream->get_max_num_samps();
>
> std::vector<std::vector<std::complex<float>>> buffs (
>         num_channels,
>         std::vector<std::complex<float>> (spp)
>     );
>
>     for(int i =3D 0; i< buffs.size(); i++)
>         buffPtrs.push_back(buffs[i].data());
>
>     uhd::stream_cmd_t stream_cmd =3D =

> uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
>     stream_cmd.stream_now =3D false;
>
>
> //We suspect this block is causing the odd behavior
> {
>     stream_cmd.time_spec =3D uhd::time_spec_t (1.9);
>     rx_stream->issue_stream_cmd(stream_cmd);
>     std::this_thread::sleep_for(std::chrono::milliseconds(2000));
> }
>
> Then this function is called multiple times to gather the IQ samples
>
>     read =3D rx_stream->recv(buffPtrs, 512, rx_metadata, 2);
>
> Hope you can help us, thanks beforehand.
>
> Pablo (Universidad Polit=E9cnica de Madrid)
>
There will always be some amount of "rubbish" in the start of the sample =

stream, because the DDC filters are filled with *something* prior to
   samples percolating through them.

Also, you're starting streaming at some time in the future, but you're =

assuming that the X310 system clock starts at zero when you initiate a
   session with it.  It does not.  The X310 system clock starts at zero =

on *power up*, and will continue counting up from there until it is
   reset with a set_time_now() or set_time_next_pps() command.

There is no reason to wait 2 seconds after sending the issue_stream_cmd().



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
