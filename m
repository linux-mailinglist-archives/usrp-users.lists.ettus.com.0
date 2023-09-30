Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB627B4002
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 12:35:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39BBC384C87
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 06:35:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696070100; bh=mcqsQJq/N1yuzLMjoxtla3/ocL+E9poS4MTfTROG3kM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Hcy87oFe5sU2B7GQdYgWr+sgjgsuiN481SBaFTYo1aZnfklUkPyGjHj9PQzXSKp22
	 Qs3WdYaAGdyqEJMClaqZX8WYIAg9Cohw0u/bhnDG0bWDTs/61yO2wuMIB82tPMHpe0
	 WNQuf9JIBTU3lAt1fL/iBIdOKceeslspkGbFDs2G43VB4xQE+2KXV6Bb3xr4TDZfKO
	 A/dJ+oAvui582ru9OG+Kppe6hatUaoZCm2/5Aad8hoigp6X0cAVJVu4iS4aU4+O76T
	 5p/G1e6zb3BM1HSbMRe4N95JNRyIsyBjMmYsp0y4fC4ATqED9D4cMAihTFj26ewrB0
	 zHH0ipnq0rjFQ==
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 59251384C84
	for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 06:34:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="j/QrZCTa";
	dkim-atps=neutral
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-406402933edso66117825e9.2
        for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 03:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1696070090; x=1696674890; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0I4Q3vKxQVTXfvgOUstkEsLbuYEzcYGPsvTXZfLhORU=;
        b=j/QrZCTaQaONwWnFgGqBbjfYRZF9qeQXQQNr5M17DXmLOJK5E+rPo1dXWKretiKE7X
         PoP5ty2r+7bfaQOu9px6szBUVuvl2i1OpcaOgT4OeLjKJQUNPbvYw13389owujWiyWvz
         SFObgC90QK2yCeM8xHXdW7wcnHBl8A//6ekHwXlZSPsqlILEadLjgc1TluCqktbNcKpT
         7nAhEqXJh8fTQk/p2uL6q1EyIny1CIf2bIp1MeEnw61q1d/oiE3ThxZXotOzsT1vP99r
         /ffJ8ZkA51VHeayDyNnyqvT6PW3AJk2FKNE52ZgBwFK/w6qJL1I/CeDW4JFMomMAnSck
         fZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696070090; x=1696674890;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0I4Q3vKxQVTXfvgOUstkEsLbuYEzcYGPsvTXZfLhORU=;
        b=YCg8jeB3jIZPp8waVmGSXAv4575eTT0+gJCI/T/aj3DCxAZg1kLHhvFr5qgWyjQG/S
         inTj0RX7J8SZa3PdjMagwhtw9Ni9Dzo6BIBidBlxefuEyZrLhNEMzFXX8HhUCA27vovc
         PlMKdba0nA6s7Sx/Ox3LTlieKyeFZ1UVkF9O5paMWgIAUwvlCs3jGMRf3eXQf1jDN5yL
         QCOtR/l8Ihr3KDZ6zx4CE+TAnVjUhDZ2OE7H4HEZmlAy18AnWP90vgYD10EtA/cRVjCN
         ACJcffh9eRMuX361LulrEHsjjaAmc4e1aQNwyf5pW7lU+2QXlYK0QZupzSq8NdlEOwwb
         Bcpw==
X-Gm-Message-State: AOJu0Yx8wdJu+Rvd3wYOAky9qxNFClZPlDm7N8iD+3bgvjZj/T0jUfRd
	yXkRxMRkR0gMeaBQO79txQlV04BVMQqFUFGpB3Ci82Sv
X-Google-Smtp-Source: AGHT+IHZjDdu8SDKZym+f/3EeTso/5rq3dxxCQrLFE48J3k/0zLEmVR7CouLqqssOYpq2uY5XNH1FA==
X-Received: by 2002:a7b:c410:0:b0:403:bb04:2908 with SMTP id k16-20020a7bc410000000b00403bb042908mr5536557wmi.23.1696070089106;
        Sat, 30 Sep 2023 03:34:49 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3856:ed00:10fc:1619:bea3:90d1? ([2001:9e8:3856:ed00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id p10-20020adff20a000000b0032763287473sm332333wro.75.2023.09.30.03.34.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 03:34:48 -0700 (PDT)
Message-ID: <d7f921a4-69be-c33d-417a-b59d2bb0ba4d@ettus.com>
Date: Sat, 30 Sep 2023 12:34:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <jhibP6pgtx52sT9pjMS9B3IFBkLkv8D3jsrSo8PNRk@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <jhibP6pgtx52sT9pjMS9B3IFBkLkv8D3jsrSo8PNRk@lists.ettus.com>
Message-ID-Hash: S5TJF7NM2HHDGUPNE2IBN6XLKVZJVETJ
X-Message-ID-Hash: S5TJF7NM2HHDGUPNE2IBN6XLKVZJVETJ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Appears Laggy Using UHD 4.5
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S5TJF7NM2HHDGUPNE2IBN6XLKVZJVETJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4243769106456239688=="

This is a multi-part message in MIME format.
--===============4243769106456239688==
Content-Type: multipart/alternative;
 boundary="------------QYtC6eiyufRJxW43sMWnd05y"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QYtC6eiyufRJxW43sMWnd05y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

re 2-:

Your `recv` call fills in a metadata object, which has a `timespec` membe=
r. You could use=20
that. I've hacked together debugging receivers in the past where I just w=
rote the=20
timespecs and the samples they belong to interleaved to a separate file, =
something like=20
(this is just copied together from code snippets I wrote elsewhere; no gu=
arantees it works:)

#include <complex>
#include <cstdint>
#include <cstdio>
#include <fstream>
#include <ios>
#include <uhd/rfnoc_graph.hpp>
#include <uhd/types/metadata.hpp>
#include <uhd/types/stream_cmd.hpp>
#include <uhd/types/time_spec.hpp>
#include <vector>

constexpr size_t total_samples_to_get =3D 50'000'000;

struct timespec_entry {
   uint64_t sample;
   uhd::time_spec_t timespec;
};

int main(int argc, char *argv[]) {
   if (argc !=3D 3) {
     std::cerr
         << "Got " << argc - 1
         << " arguments, but need two arguments: sample_file timespecs_fi=
le\n";
     return -1;
   }

   std::ofstream sample_file(argv[1], std::ios_base::binary);
   std::ofstream timespecs_file(argv[2], std::ios_base::binary);
   size_t samples_received =3D 0;

   // =E2=80=A6
   auto nocgraph =3D uhd::rfnoc::rfnoc_graph::make("");
   // =E2=80=A6 set up the graph =E2=80=A6
   // =E2=80=A6 set up the gain, frequency and stuff =E2=80=A6
   auto rx =3D nocgraph->create_rx_streamer(1, {"fc32", "sc16"});
   // =E2=80=A6 connect rx to the last noc block =E2=80=A6

   uhd::stream_cmd_t rx_command(uhd::stream_cmd_t::STREAM_MODE_START_CONT=
INUOUS);
   rx_command.num_samps =3D 0;
   rx_command.stream_now =3D true;
   rx_command.time_spec =3D uhd::time_spec_t{};
   rx->issue_stream_cmd(rx_command);

   std::vector<std::complex<float>> sample_buffer(1 << 16);
   while (total_samples_to_get > samples_received) {
     uhd::rx_metadata_t metadata;
     auto current_n_recv =3D
         rx->recv(sample_buffer.data(), // where do the samples go
                  std::min(total_samples_to_get - samples_received,
                           sample_buffer.size()), // how many samples
                  metadata,                       // where does the metad=
ata go
                  2.0                             // timeout
         );
     sample_file.write(reinterpret_cast<char *>(sample_buffer.data()),
                       current_n_recv *
                           sizeof(decltype(sample_buffer)::value_type));
     if (metadata.has_time_spec) {
       timespec_entry entry{samples_received, metadata.time_spec};
       timespecs_file.write(reinterpret_cast<char *>(&entry), sizeof(entr=
y));
     }
     samples_received +=3D current_n_recv;
   }
   rx->issue_stream_cmd({uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS})=
;
   sample_file.close();
   timespecs_file.close();

   return 0;
}

On 30.09.23 06:21, h57jafari@gmail.com wrote:
>
> Hi Rob,
>
> RFNoC_Replay as you mentioned is great without any underrun even with h=
igher sample rate.
>
> 1- I have a same radar application and I implemented the TX/RX code wit=
h two methods in=20
> GNU Radio: with RFNoC_Replay and also with simple USRP sink/source bloc=
ks.
>
> -with USRP sink/source blocks, while it transmits and receive radar wav=
eform, I can save=20
> both of those TX and RX signals that needed for post processing.
>
> -but when I use RFNoC_Replay, radar waveform first loaded to the DRAM i=
n USRP and then=20
> transmitted directly from there to the antenna, so while the echo signa=
ls from targets=20
> can be received and save to file, but how can I save the transmitted wa=
veform?
>
> 2- also here is the other question, while I am saving these TX and RX s=
ignals to file,=20
> how can I save timing information, like when each sample received. it i=
s important=20
> because of the underurn and overflow happen during TX and RX. any sugge=
stions?
>
> Thank you.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------QYtC6eiyufRJxW43sMWnd05y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>re 2-:<br>
    </p>
    <p>Your `recv` call fills in a metadata object, which has a
      `timespec` member. You could use that. I've hacked together
      debugging receivers in the past where I just wrote the timespecs
      and the samples they belong to interleaved to a separate file,
      something like (this is just copied together from code snippets I
      wrote elsewhere; no guarantees it works:)</p>
    <pre>#include &lt;complex&gt;
#include &lt;cstdint&gt;
#include &lt;cstdio&gt;
#include &lt;fstream&gt;
#include &lt;ios&gt;
#include &lt;uhd/rfnoc_graph.hpp&gt;
#include &lt;uhd/types/metadata.hpp&gt;
#include &lt;uhd/types/stream_cmd.hpp&gt;
#include &lt;uhd/types/time_spec.hpp&gt;
#include &lt;vector&gt;

constexpr size_t total_samples_to_get =3D 50'000'000;

struct timespec_entry {
  uint64_t sample;
  uhd::time_spec_t timespec;
};

int main(int argc, char *argv[]) {
  if (argc !=3D 3) {
    std::cerr
        &lt;&lt; "Got " &lt;&lt; argc - 1
        &lt;&lt; " arguments, but need two arguments: sample_file timespe=
cs_file\n";
    return -1;
  }

  std::ofstream sample_file(argv[1], std::ios_base::binary);
  std::ofstream timespecs_file(argv[2], std::ios_base::binary);
  size_t samples_received =3D 0;

  // =E2=80=A6
  auto nocgraph =3D uhd::rfnoc::rfnoc_graph::make("");
  // =E2=80=A6 set up the graph =E2=80=A6
  // =E2=80=A6 set up the gain, frequency and stuff =E2=80=A6
  auto rx =3D nocgraph-&gt;create_rx_streamer(1, {"fc32", "sc16"});
  // =E2=80=A6 connect rx to the last noc block =E2=80=A6

  uhd::stream_cmd_t rx_command(uhd::stream_cmd_t::STREAM_MODE_START_CONTI=
NUOUS);
  rx_command.num_samps =3D 0;
  rx_command.stream_now =3D true;
  rx_command.time_spec =3D uhd::time_spec_t{};
  rx-&gt;issue_stream_cmd(rx_command);

  std::vector&lt;std::complex&lt;float&gt;&gt; sample_buffer(1 &lt;&lt; 1=
6);
  while (total_samples_to_get &gt; samples_received) {
    uhd::rx_metadata_t metadata;
    auto current_n_recv =3D
        rx-&gt;recv(sample_buffer.data(), // where do the samples go
                 std::min(total_samples_to_get - samples_received,
                          sample_buffer.size()), // how many samples
                 metadata,                       // where does the metada=
ta go
                 2.0                             // timeout
        );
    sample_file.write(reinterpret_cast&lt;char *&gt;(sample_buffer.data()=
),
                      current_n_recv *
                          sizeof(decltype(sample_buffer)::value_type));
    if (metadata.has_time_spec) {
      timespec_entry entry{samples_received, metadata.time_spec};
      timespecs_file.write(reinterpret_cast&lt;char *&gt;(&amp;entry), si=
zeof(entry));
    }
    samples_received +=3D current_n_recv;
  }
  rx-&gt;issue_stream_cmd({uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS=
});
  sample_file.close();
  timespecs_file.close();

  return 0;
}

</pre>
    <div class=3D"moz-cite-prefix">On 30.09.23 06:21, <a class=3D"moz-txt=
-link-abbreviated" href=3D"mailto:h57jafari@gmail.com">h57jafari@gmail.co=
m</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:jhibP6pgtx52sT9pjMS9B3IFBkLkv8D3jsrSo8PNRk@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Rob,</p>
      <p>RFNoC_Replay as you mentioned is great without any underrun
        even with higher sample rate. </p>
      <p>1- I have a same radar application and I implemented the TX/RX
        code with two methods in GNU Radio: with RFNoC_Replay and also
        with simple USRP sink/source blocks.</p>
      <p>-with USRP sink/source blocks, while it transmits and receive
        radar waveform, I can save both of those TX and RX signals that
        needed for post processing.</p>
      <p>-but when I use RFNoC_Replay, radar waveform first loaded to
        the DRAM in USRP and then transmitted directly from there to the
        antenna, so while the echo signals from targets can be received
        and save to file, but how can I save the transmitted waveform?</p=
>
      <p>2- also here is the other question, while I am saving these TX
        and RX signals to file, how can I save timing information, like
        when each sample received. it is important because of the
        underurn and overflow happen during TX and RX. any suggestions?</=
p>
      <p>Thank you. </p>
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

--------------QYtC6eiyufRJxW43sMWnd05y--

--===============4243769106456239688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4243769106456239688==--
