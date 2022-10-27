Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E65E60F6DF
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 14:11:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D16B381809
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 08:11:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666872662; bh=Xw6+UYynHZXx+5NQx86maHFI6FFtANFoRTXk7JugSLw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DL9IPYiZOa5Ifl4j4bXBlBpMqVGgHhAiQnenxSGjisOVw8q5F+TaCmIt0ZAkuI+r4
	 p3ZswbiFF4y73+YkWeeAqL6F3ATX25DpIxbkqPJqk4+cd8eimGMg2EPZzybO6RE13P
	 iRVw/UvEylVfy2NUOXAwYD0qWqHwSZMJAjNeTAcW5L/3oDV10AmIICcixTvdwbZWtR
	 XS/P6RTJzyhTDhpRFDnhZMvseG3HDLIlER52l859HctYVQCBQq/vleoYQe9MW0Vxqj
	 zUUafsjTw1dkEy50aLDX5Wd/nUPgzPRzFLwqTn9KvtDpzJZrHbXC42HloTwjW4mE/s
	 3vrzd33lKpDpQ==
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C9A1380D95
	for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 08:10:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="exDWb11d";
	dkim-atps=neutral
Received: by mail-il1-f181.google.com with SMTP id q18so810828ils.12
        for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 05:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nG25ddAuYTSleX8b+Se3e8TW7tu4t2xjjeNYB4MtjR0=;
        b=exDWb11dzLxq7FL8z5kqHIgdkOqTlhHHOMQ7C5qG25bHb+8jvFprm2/npu5TMzKu2E
         sjB9ucyAaJ1BiaXuOLZnYlqIIFepfQ4f9o8VIf4hxz98R0sYMneuSy4xXjDPypONAS5C
         yPyZTGM8zSglzr3ytAPvwSAVzTB2nGEvx8wROwc8pp78AZaYC6zL8f3WyObZor/lY3ux
         BEX9IZaCHoiQCjPiiMu21eP6YjFV2IChSO8smONlf04wfJNlVcanzM3x4qlvesk8ijOb
         yHMFuwOovliw6BkDa7OVLMqg5k1LdpLMGTgKOYb/l3NAIz1kpZalHPmhH1mPdbp8XKKY
         TeQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nG25ddAuYTSleX8b+Se3e8TW7tu4t2xjjeNYB4MtjR0=;
        b=kZia3EF3cQWOLEw/qkmgZV1vPtwreXK7aiAUWYHfU7AUDRj/kFasx9v6ANfni2RUPj
         8MMRVTcsyINn1z8DaKIZsPm3A9huT2HsQjBKbA3sQiLU0g5x/U74vquga3hYp+rVHFl+
         DL+0JpJv7T0i58ZCSw6OpIzH+A/acfp0f6iHUvVolfep8Sb8CRPlqDqF9H09m7Dq9tnz
         h/dDbXek8PBTIdsKHL5gxhB215k/r0Ty0o3CpCIGQiwSGCNXbeOnnMLbIiJ5J7soHbhM
         8RanTHHGp2HReiR7voIk3aKNuk0sW2I39hL7V/VBCZvqEI3xAz6zLL4oAozczlkKtADD
         6nXQ==
X-Gm-Message-State: ACrzQf2jKqBOE50xnZes/lERN82GLvCywX/EMGTjO+2VRDAt/QPfeGSA
	uzscuexTzPt4wMjD0PZi0pXI3RQM0H0=
X-Google-Smtp-Source: AMsMyM4LmKEke5VEFYI4mKBMP3v2od0NyN3tK9J03sVqdsbJve5CUZYfG7OY5PpZcWQNkZDeBNsc7w==
X-Received: by 2002:a05:6e02:1c05:b0:2fc:2f37:75c3 with SMTP id l5-20020a056e021c0500b002fc2f3775c3mr31233709ilh.149.1666872612394;
        Thu, 27 Oct 2022 05:10:12 -0700 (PDT)
Received: from [192.168.2.176] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id 66-20020a020a45000000b003633848da58sm544298jaw.41.2022.10.27.05.10.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 05:10:12 -0700 (PDT)
Message-ID: <ef957739-8947-1c34-0dd4-a53e32633f8a@gmail.com>
Date: Thu, 27 Oct 2022 08:10:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <76da335236934c9a94b1213673509b88@kth.se>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <76da335236934c9a94b1213673509b88@kth.se>
Message-ID-Hash: LURREXQARCTD45RIAUXKRKNE5MPR3Q4C
X-Message-ID-Hash: LURREXQARCTD45RIAUXKRKNE5MPR3Q4C
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N210 C API stream SC16
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LURREXQARCTD45RIAUXKRKNE5MPR3Q4C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8153235940620418048=="

This is a multi-part message in MIME format.
--===============8153235940620418048==
Content-Type: multipart/alternative;
 boundary="------------HAffwAhTMEiqGBtEgjcxrDWM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------HAffwAhTMEiqGBtEgjcxrDWM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/10/2022 07:36, Marco Spanghero wrote:
>
> Hi,
>
> I am currently facing a problem using the C API with a USRP N210 r4. I=20
> am trying to stream a int16_t interleave IQ file. When using the=20
> included C++ tx_samples_from_file demo, the baseband is streamed=20
> without interruptions or other issues. The BB is received at the DUT=20
> and the symbols seem correct.
>
> Unfortunately, integration with a bigger software requires usage of=20
> the C API. What is unclear is how does the C and C++ API compare in=20
> handling the samples? Seems to me there is no direct mapping between=20
> the std::complex<short> and interleaved int16_t for IQ. When analyzed=20
> with a spectrum analyzer, the baseband streamed look completely=20
> different.
>
> Details on the implemented functions and problem:
> Issue Description
> I am using the C API to stream a binary data file. The file is saved=20
> as interleaved int16_t [I][Q] samples. I am using an N210r4 with the=20
> latest UHD and fpga image. MTU on the NIC is configured at 3000,=20
> buffer size is 10000 samples. The same file, when streamed with the=20
> included tx_samples_from_file example works fine and the baseband is=20
> received correctly. When the equivalent code is written in C, the=20
> baseband is not correct.
>
> *Setup Details*
> _Implemented C code streaming loop:_
>
> while (1) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (stop_signal_called)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd_tx_metadata_make(&md, false, 0, 0.1, fa=
lse, false);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t read =3D fread(buff, sizeof(int16_t)=
, samps_per_buff, file);
I think your problem might be ^^^^^^^^^^^^^^^

You probably meant "sizeof(int16_t)*2"


> =C2=A0 =C2=A0 =C2=A0 =C2=A0 for(int i =3D 0; i < read; i++){
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf("%d \n", buff[i]);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 if(read > 0){
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd_tx_streamer_send(tx_strea=
mer, buffs_ptr, read, &md,=20
> 0.1, &num_samps_sent);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 total_num_samps +=3D num_samp=
s_sent;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 else
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (verbose)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf("\n Sent %ld - from fi=
le %ld\n ", total_num_samps,=20
> read);
> =C2=A0 =C2=A0 }
> buff containes the data block to stream and is defined as buff =3D=20
> malloc(samps_per_buff*sizeof(int16_t));
>
> _C metadata_
>
> uhd_stream_args_t stream_args =3D {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 .cpu_format=C2=A0 =C2=A0 =3D "sc16",
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 .otw_format=C2=A0 =C2=A0 =3D "sc16",
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 .args=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D "",
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 .channel_list=C2=A0 =C2=A0=3D 0,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 .n_channels=C2=A0 =C2=A0=3D 1};
>
> _Reference C++ streaming loop:_
>
> void send_from_file(
> =C2=A0 =C2=A0 uhd::tx_streamer::sptr tx_stream, const std::string& file=
, size_t=20
> samps_per_buff)
> {
> =C2=A0 =C2=A0 uhd::tx_metadata_t md;
> =C2=A0 =C2=A0 md.start_of_burst =3D false;
> =C2=A0 =C2=A0 md.end_of_burst=C2=A0 =C2=A0=3D false;
> =C2=A0 =C2=A0 std::vector<samp_type> buff(samps_per_buff);
> =C2=A0 =C2=A0 std::ifstream infile(file.c_str(), std::ifstream::binary)=
;
>
> =C2=A0 =C2=A0 // loop until the entire file has been read
>
> =C2=A0 =C2=A0 while (not md.end_of_burst and not stop_signal_called) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 infile.read((char*)&buff.front(), buff.size=
() *=20
> sizeof(samp_type));
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t num_tx_samps =3D size_t(infile.gcoun=
t() / sizeof(samp_type));
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 md.end_of_burst =3D infile.eof();
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 const size_t samples_sent =3D tx_stream->se=
nd(&buff.front(),=20
> num_tx_samps, md);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (samples_sent !=3D num_tx_samps) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_LOG_ERROR("TX-STREAM",
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "The tx_stream =
timed out sending " << num_tx_samps <<=20
> " samples ("
> =C2=A0<< samples_sent << " sent).");
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
> =C2=A0 =C2=A0 }
>
> =C2=A0 =C2=A0 infile.close();
> }
> _Reference C++ metadata_
>
> uhd::stream_args_t stream_args("sc16", "sc16");
> channel_nums.push_back(boost::lexical_cast<size_t>(channel));
> stream_args.channels=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=
 0;
> uhd::tx_streamer::sptr tx_stream =3D usrp->get_tx_stream(stream_args);
> Expected Behavior
> I would expect the two samples to perform exactly the same. The=20
> baseband should be identical
>
> *Actual Behaviour*
> Once shown on a spectrum analyzer, the C example shows a much larger=20
> gain an the baseband appears fragmented. I don't understand how the C=20
> api handles the buffer streaming. According to the code the C function=20
> wraps the exact same behavior of the send call.
>
> Steps to reproduce the problem
> I can provide source code for the two examples and binary file. Both=20
> samples are executed at 2.5Msps
>
> *Question*
> What am I missing here to correctly stream the baseband? My=20
> understanding is that once the data type is fixed in the streaming=20
> metadata, we call uhd_tx_streamer_send with the number of samples that=20
> we want to stream (which is what the C++ example does using as type=20
> std::complex<short>. In the C case, how do we achieve the same behavior=
?
>
> I would really appreciate any support in this matter.
>
> Best regards
> Marco Spanghero
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------HAffwAhTMEiqGBtEgjcxrDWM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/10/2022 07:36, Marco Spanghero
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:76da335236934c9a94b1213673509b88@kth.se">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p><span style=3D"font-family: Calibri, Helvetica, sans-serif,
            EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
            Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
            &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">Hi=
,=C2=A0</span></p>
        <div style=3D"font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          I am currently facing a problem using the C API with a USRP
          N210 r4. I am trying to stream a int16_t interleave IQ file.
          When using the included C++ tx_samples_from_file demo, the
          baseband is streamed without interruptions or other issues.
          The BB is received at the DUT and the symbols seem correct.=C2=A0=
</div>
        <div style=3D"font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          <br>
        </div>
        <div style=3D"font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          Unfortunately, integration with a bigger software requires
          usage of the C API. What is unclear is how does the C and C++
          API compare in handling the samples? Seems to me there is no
          direct mapping between the std::complex&lt;short&gt; and
          interleaved int16_t for IQ. When analyzed with a spectrum
          analyzer, the baseband streamed look completely different.=C2=A0=
</div>
        <div style=3D"font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          <br>
        </div>
        <div style=3D"font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          Details on the implemented functions and problem:</div>
        <div style=3D"font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          <div>Issue Description</div>
          <div>I am using the C API to stream a binary data file. The
            file is saved as interleaved int16_t [I][Q] samples. I am
            using an N210r4 with the latest UHD and fpga image. MTU on
            the NIC is configured at 3000, buffer size is 10000 samples.
            The same file, when streamed with the included
            tx_samples_from_file example works fine and the baseband is
            received correctly. When the equivalent code is written in
            C, the baseband is not correct.</div>
          <div><br>
          </div>
          <div><b>Setup Details</b></div>
          <div><u>Implemented C code streaming loop:</u></div>
          <div><br>
          </div>
          <div>while (1) {</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (stop_signal_called)</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;</div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd_tx_metadata_make(&amp;md, =
false, 0, 0.1,
            false, false);</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t read =3D fread(buff, si=
zeof(int16_t),
            samps_per_buff, file);</div>
        </div>
      </div>
    </blockquote>
    I think your problem might be ^^^^^^^^^^^^^^^<br>
    <br>
    You probably meant "sizeof(int16_t)*2"<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:76da335236934c9a94b1213673509b88@kth.se">
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <div style=3D"font-family: Calibri, Helvetica, sans-serif,
          EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
          Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,
          &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for(int i =3D 0; i &lt; read; =
i++){</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf("%d \n", =
buff[i]);</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if(read &gt; 0){</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd_tx_streamer_=
send(tx_streamer, buffs_ptr,
            read, &amp;md, 0.1, &amp;num_samps_sent);</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 total_num_samps =
+=3D num_samps_sent;</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 else</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (verbose)</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf("\n Sent =
%ld - from file %ld\n ",
            total_num_samps, read);</div>
          <div>=C2=A0 =C2=A0 }</div>
          <div>buff containes the data block to stream and is defined as
            buff =3D malloc(samps_per_buff*sizeof(int16_t));</div>
          <div><br>
          </div>
          <div><u>C metadata</u></div>
          <div><br>
          </div>
          <div>uhd_stream_args_t stream_args =3D {</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 .cpu_format=C2=A0 =C2=A0 =3D "=
sc16",=C2=A0=C2=A0</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 .otw_format=C2=A0 =C2=A0 =3D "=
sc16",=C2=A0=C2=A0</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 .args=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "",=C2=A0=C2=A0</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 .channel_list=C2=A0 =C2=A0=3D =
0,=C2=A0=C2=A0</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 .n_channels=C2=A0 =C2=A0=3D 1}=
;</div>
          <div><br>
          </div>
          <div><u>Reference C++ streaming loop:</u></div>
          <div><br>
          </div>
          <div>void send_from_file(</div>
          <div>=C2=A0 =C2=A0 uhd::tx_streamer::sptr tx_stream, const
            std::string&amp; file, size_t samps_per_buff)</div>
          <div>{</div>
          <div>=C2=A0 =C2=A0 uhd::tx_metadata_t md;</div>
          <div>=C2=A0 =C2=A0 md.start_of_burst =3D false;</div>
          <div>=C2=A0 =C2=A0 md.end_of_burst=C2=A0 =C2=A0=3D false;</div>
          <div>=C2=A0 =C2=A0 std::vector&lt;samp_type&gt; buff(samps_per_=
buff);</div>
          <div>=C2=A0 =C2=A0 std::ifstream infile(file.c_str(),
            std::ifstream::binary);=C2=A0</div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 // loop until the entire file has been read<=
/div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 while (not md.end_of_burst and not
            stop_signal_called) {</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 infile.read((char*)&amp;buff.f=
ront(), buff.size()
            * sizeof(samp_type));</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t num_tx_samps =3D size_t=
(infile.gcount() /
            sizeof(samp_type));</div>
          <div>=C2=A0</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 md.end_of_burst =3D infile.eof=
();</div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 const size_t samples_sent =3D
            tx_stream-&gt;send(&amp;buff.front(), num_tx_samps, md);</div=
>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (samples_sent !=3D num_tx_s=
amps) {</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_LOG_ERROR("T=
X-STREAM",</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "T=
he tx_stream timed out sending "
            &lt;&lt; num_tx_samps &lt;&lt; " samples ("</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0&lt;&lt; samples_sent &lt;&lt; " sent).");</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</div>
          <div>=C2=A0 =C2=A0 }</div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 infile.close();</div>
          <div>}</div>
          <div><u>Reference C++ metadata</u></div>
          <div><br>
          </div>
          <div>uhd::stream_args_t stream_args("sc16", "sc16");</div>
          <div>channel_nums.push_back(boost::lexical_cast&lt;size_t&gt;(c=
hannel));</div>
          <div>stream_args.channels=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D 0;</div>
          <div>uhd::tx_streamer::sptr tx_stream =3D
            usrp-&gt;get_tx_stream(stream_args);</div>
          <div>Expected Behavior</div>
          <div>I would expect the two samples to perform exactly the
            same. The baseband should be identical</div>
          <div><br>
          </div>
          <div><b>Actual Behaviour</b></div>
          <div>Once shown on a spectrum analyzer, the C example shows a
            much larger gain an the baseband appears fragmented. I don't
            understand how the C api handles the buffer streaming.
            According to the code the C function wraps the exact same
            behavior of the send call.</div>
          <div><br>
          </div>
          <div>Steps to reproduce the problem</div>
          <div>I can provide source code for the two examples and binary
            file. Both samples are executed at 2.5Msps</div>
          <div><br>
          </div>
          <div><b>Question</b></div>
          <div>What am I missing here to correctly stream the baseband?
            My understanding is that once the data type is fixed in the
            streaming metadata, we call uhd_tx_streamer_send with the
            number of samples that we want to stream (which is what the
            C++ example does using as type std::complex&lt;short&gt;. In
            the C case, how do we achieve the same behavior?</div>
          <div><br>
          </div>
          <div>I would really appreciate any support in this matter.</div=
>
          <div><br>
          </div>
          <div>Best regards</div>
          <div>Marco Spanghero</div>
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
    <br>
  </body>
</html>

--------------HAffwAhTMEiqGBtEgjcxrDWM--

--===============8153235940620418048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8153235940620418048==--
