Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F91C8FCDB5
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 14:49:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EAAF385199
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 08:49:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717591798; bh=gHwSzXcjK5Wf202LWIVyTZ9D8dNkUalZVb7c4pkEZqs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wnPGxgUaxRWlW2rtWnPGwuOa2CHyhxO8jlRR4zNpeqOT/wB4yY2CU1XaHV4xLPzWp
	 fkZlvLbRN5rq++el30xRFn8mjgFdYb7GEbAm19xinzz/U6cISKNH2Xrj8vP/mtvEeV
	 gjb76mf+gIzAKgSqpnbCDwEIbAgcTF3hUBw96Rj07DaFMOrSn8n7ynOm9DA2gS+8JW
	 aokgPWruLjP6MBKCvB1QUSo2YKUZ6MT+PjbNXjmIx3zsrjmsf414JROcU9tRhU8S1H
	 qZdzS7MdStJ4ngn6qDCChReTgihnwodp0i5+mXAJYBYjITYavNHzkm0UcHjTcg/jxK
	 yPIJpeExHZH4A==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DA5A383DCB
	for <usrp-users@lists.ettus.com>; Wed,  5 Jun 2024 08:49:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IUwLfw3z";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-44028b7bd97so7518601cf.1
        for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2024 05:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717591744; x=1718196544; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T9RrrCNYJ8kZZrBegOHVELVw3uoGRqAEw7v0pKdgzW4=;
        b=IUwLfw3z27Fw1af8o3TTKfywL+gwP37O3ASOSQgdVvqdsGhNvaYVlmxLiEC4VkvKbr
         dwhSfbwJnzL8VcSrnxKyR1QhFRjUo0t8gp6xuOErro5x7yXcwIHaw+7gPN4wNnCPz4OO
         sEbUdNzWZevYKXw2Q3TNFcsNGermc+6gGpgYQ4YZvFo4Dx2yBV06ehSYskw32kpiLJT5
         HBL3roYEwhg7PqyNCNI+YsKmH1gwkNLO72QqcVw7AqtPDzokoXjEOuQzy5iqcQ2hO52z
         2jtHLcuVyNH8/QIHTq5B1PpEsuDQY89/GBkk+92ICh2OGjhnL4Gil4ygLGkM0OtSBnIp
         x+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717591744; x=1718196544;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T9RrrCNYJ8kZZrBegOHVELVw3uoGRqAEw7v0pKdgzW4=;
        b=hlGYX11yRT4d6JaUZkOSbHEWlpOQzuko0wFEF0S06B7nt3mu6Ngtrtjbq0AJlGMyFT
         u1Sv2JPhJfMmbxSLglxV2pm2AIoVtthfZD9e6Kgm9PBkA/9gb9IFfmJWW6T+jSzWBEHo
         7aHHwCn+RUVMJQ0OvSMhDG2IVmG6aFhnLZ5qBikViY5A5KjlCb9m7EbvYLQXFejDm6wl
         TiFqNb65daDgvp1zXzOIkzP0Zn15rLj4phJxgfWCWbCdXgs6ShYYEFqE2kioqUNx2O71
         adunm/waWrdx5isa5FoagAFXBnuxrsFrYyxxhQptWbBZKMZgNr9XBbvMbA2ukV3kaFO6
         fePg==
X-Gm-Message-State: AOJu0YztH0IHDXi5itRDQQSAEXlmpzrqT04RCPsNm+lYY+w4zIguOxrr
	HN8/ZTf+cK8nya4hYHEeWGTDsiw7ZjH8xPyaZNsfDiMKjIVImDVtGOUAOw==
X-Google-Smtp-Source: AGHT+IGtLz1gBLaQaQRYzjfaZn1KqPp+lesDobDUAyBXG5feYvH/bPLaBJcnPkWdfjZfemunlssbNQ==
X-Received: by 2002:ac8:7e87:0:b0:43a:cdb9:a8ef with SMTP id d75a77b69052e-4402b1bad57mr28359831cf.0.1717591744124;
        Wed, 05 Jun 2024 05:49:04 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-440177a95bbsm20977451cf.51.2024.06.05.05.49.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 05:49:03 -0700 (PDT)
Message-ID: <0752831a-d8b9-46d3-ae5c-132a9e084621@gmail.com>
Date: Wed, 5 Jun 2024 08:48:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AS8P194MB189394551E5E2FF60681279DFCF82@AS8P194MB1893.EURP194.PROD.OUTLOOK.COM>
 <7464804b-a2da-453a-9a0b-9ce91d0c294b@gmail.com>
 <1776937472.1162106.1717590743172@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1776937472.1162106.1717590743172@mail.yahoo.com>
Message-ID-Hash: G3FZHUDJXOWNK627SHXS3JZOQBEO7JBF
X-Message-ID-Hash: G3FZHUDJXOWNK627SHXS3JZOQBEO7JBF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Big network Latency on 100G port in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G3FZHUDJXOWNK627SHXS3JZOQBEO7JBF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4646244779312520438=="

This is a multi-part message in MIME format.
--===============4646244779312520438==
Content-Type: multipart/alternative;
 boundary="------------j10smqA0UD6CX6pNIcV4binX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------j10smqA0UD6CX6pNIcV4binX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/06/2024 08:32, zhou via USRP-users wrote:
> Hi All,
>
> I am using MCX516A-CCAT for X410 USRP. It has three network ports, two=20
> for 100Gb QSFP and one for 1Gb ethernet. They are directly connected=20
> to host. Surprisingly, I find much bigger latency on the 100Gb link=20
> than the 1Gb link when ping them. I didn't notice this before.
>
> Then I checked X310. Its latency is also pretty big compared to the=20
> 1Gb port: rtt min/avg/max/mdev =3D 0.341/0.539/0.793/0.187 ms
>
> Why is the latency in 100Gb bigger than 1Gb port?
>
> ~$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;=20
> UHD_4.5.0.0-0-g471af98f
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
> =C2=A0 =C2=A0 serial: 3289B23
> =C2=A0 =C2=A0 addr: 192.168.20.2
> =C2=A0 =C2=A0 claimed: False
> =C2=A0 =C2=A0 fpga: CG_400
> =C2=A0 =C2=A0 mgmt_addr: 192.168.10.2
> =C2=A0 =C2=A0 mgmt_addr: 192.168.20.2
> =C2=A0 =C2=A0 mgmt_addr: 192.168.6.66
> =C2=A0 =C2=A0 name: ni-x4xx-3289B23
> =C2=A0 =C2=A0 product: x410
> =C2=A0 =C2=A0 type: x4xx
>
> ~$ ping 192.168.10.2
> PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.
> 64 bytes from 192.168.10.2: icmp_seq=3D1 ttl=3D64 time=3D0.998 ms
> 64 bytes from 192.168.10.2: icmp_seq=3D2 ttl=3D64 time=3D0.888 ms
> 64 bytes from 192.168.10.2: icmp_seq=3D3 ttl=3D64 time=3D0.886 ms
> 64 bytes from 192.168.10.2: icmp_seq=3D4 ttl=3D64 time=3D0.894 ms
> ^C
> --- 192.168.10.2 ping statistics ---
> 4 packets transmitted, 4 received, 0% packet loss, time 3036ms
> rtt min/avg/max/mdev =3D 0.886/0.916/0.998/0.047 ms
> ~$ ping 192.168.6.66
> PING 192.168.6.66 (192.168.6.66) 56(84) bytes of data.
> 64 bytes from 192.168.6.66: icmp_seq=3D1 ttl=3D64 time=3D0.180 ms
> 64 bytes from 192.168.6.66: icmp_seq=3D2 ttl=3D64 time=3D0.143 ms
> 64 bytes from 192.168.6.66: icmp_seq=3D3 ttl=3D64 time=3D0.115 ms
> 64 bytes from 192.168.6.66: icmp_seq=3D4 ttl=3D64 time=3D0.119 ms
> ^C
> --- 192.168.6.66 ping statistics ---
> 4 packets transmitted, 4 received, 0% packet loss, time 3080ms
> rtt min/avg/max/mdev =3D 0.115/0.139/0.180/0.025 ms
>
>
> Thanks,
> H.
Probably because the RJ45 (1G) port is more directly routed to the CPU=20
part of the RFSoC chip, since it is intended by
 =C2=A0 the RFSoC architecture for management of the embedded Linux=20
component.=C2=A0 The 100G ports are, in this application,
 =C2=A0 intended largely for radio sample traffic, and management functio=
ns,=20
like ICMP, are more circuitously-routed through
 =C2=A0 the FPGA and into the Linux side of the house.=C2=A0 Suffice it t=
o say,=20
that sample traffic suffers no such long latency.



--------------j10smqA0UD6CX6pNIcV4binX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/06/2024 08:32, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1776937472.1162106.1717590743172@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp63709d82yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi All,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I am using MCX516A-CCAT fo=
r
          X410 USRP. It has three network ports, two for 100Gb QSFP and
          one for 1Gb ethernet. They are directly connected to host.
          Surprisingly, I find much bigger latency on the 100Gb link
          than the 1Gb link when ping them. I didn't notice this before.<=
/div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Then I checked X310. Its
          latency is also pretty big compared to the 1Gb port:=C2=A0<span=
>rtt
            min/avg/max/mdev =3D 0.341/0.539/0.793/0.187 ms</span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Why is the latency in 100G=
b
          bigger than 1Gb port?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div dir=3D"ltr" data-setdir=3D"false">
              <div>
                <div>~$ uhd_find_devices</div>
                <div>[INFO] [UHD] linux; GNU C++ version 11.4.0;
                  Boost_107400; DPDK_21.11; UHD_4.5.0.0-0-g471af98f</div>
                <div>--------------------------------------------------</=
div>
                <div>-- UHD Device 0</div>
                <div>--------------------------------------------------</=
div>
                <div>Device Address:</div>
                <div>=C2=A0 =C2=A0 serial: 3289B23</div>
                <div>=C2=A0 =C2=A0 addr: 192.168.20.2</div>
                <div>=C2=A0 =C2=A0 claimed: False</div>
                <div>=C2=A0 =C2=A0 fpga: CG_400</div>
                <div>=C2=A0 =C2=A0 mgmt_addr: 192.168.10.2</div>
                <div>=C2=A0 =C2=A0 mgmt_addr: 192.168.20.2</div>
                <div>=C2=A0 =C2=A0 mgmt_addr: 192.168.6.66</div>
                <div>=C2=A0 =C2=A0 name: ni-x4xx-3289B23</div>
                <div>=C2=A0 =C2=A0 product: x410</div>
                <div>=C2=A0 =C2=A0 type: x4xx</div>
                <div><br>
                </div>
                <div>~$ ping 192.168.10.2</div>
                <div>PING 192.168.10.2 (192.168.10.2) 56(84) bytes of
                  data.</div>
                <div>64 bytes from 192.168.10.2: icmp_seq=3D1 ttl=3D64
                  time=3D0.998 ms</div>
                <div>64 bytes from 192.168.10.2: icmp_seq=3D2 ttl=3D64
                  time=3D0.888 ms</div>
                <div>64 bytes from 192.168.10.2: icmp_seq=3D3 ttl=3D64
                  time=3D0.886 ms</div>
                <div>64 bytes from 192.168.10.2: icmp_seq=3D4 ttl=3D64
                  time=3D0.894 ms</div>
                <div>^C</div>
                <div>--- 192.168.10.2 ping statistics ---</div>
                <div>4 packets transmitted, 4 received, 0% packet loss,
                  time 3036ms</div>
                <div>rtt min/avg/max/mdev =3D 0.886/0.916/0.998/0.047 ms<=
/div>
                <div>~$ ping 192.168.6.66</div>
                <div>PING 192.168.6.66 (192.168.6.66) 56(84) bytes of
                  data.</div>
                <div>64 bytes from 192.168.6.66: icmp_seq=3D1 ttl=3D64
                  time=3D0.180 ms</div>
                <div>64 bytes from 192.168.6.66: icmp_seq=3D2 ttl=3D64
                  time=3D0.143 ms</div>
                <div>64 bytes from 192.168.6.66: icmp_seq=3D3 ttl=3D64
                  time=3D0.115 ms</div>
                <div>64 bytes from 192.168.6.66: icmp_seq=3D4 ttl=3D64
                  time=3D0.119 ms</div>
                <div>^C</div>
                <div>--- 192.168.6.66 ping statistics ---</div>
                <div>4 packets transmitted, 4 received, 0% packet loss,
                  time 3080ms</div>
                <div>rtt min/avg/max/mdev =3D 0.115/0.139/0.180/0.025 ms<=
/div>
                <div><br>
                </div>
              </div>
              <br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
            <div dir=3D"ltr" data-setdir=3D"false">H.</div>
          </div>
        </div>
      </div>
    </blockquote>
    Probably because the RJ45 (1G) port is more directly routed to the
    CPU part of the RFSoC chip, since it is intended by<br>
    =C2=A0 the RFSoC architecture for management of the embedded Linux
    component.=C2=A0 The 100G ports are, in this application,<br>
    =C2=A0 intended largely for radio sample traffic, and management
    functions, like ICMP, are more circuitously-routed through<br>
    =C2=A0 the FPGA and into the Linux side of the house.=C2=A0 Suffice i=
t to say,
    that sample traffic suffers no such long latency.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1776937472.1162106.1717590743172@mail.yahoo.com">
      <div class=3D"ydp63709d82yahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div><span style=3D"white-space: pre-wrap">
</span></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------j10smqA0UD6CX6pNIcV4binX--

--===============4646244779312520438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4646244779312520438==--
