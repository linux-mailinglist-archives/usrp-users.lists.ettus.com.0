Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D80AEB695
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2019 19:04:30 +0100 (CET)
Received: from [::1] (port=45686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iQEo4-0001qw-2z; Thu, 31 Oct 2019 14:04:24 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:39891)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <alexander.e.wagner@gmail.com>)
 id 1iQEo1-0001mQ-0Y
 for usrp-users@lists.ettus.com; Thu, 31 Oct 2019 14:04:21 -0400
Received: by mail-ot1-f66.google.com with SMTP id t8so6183938otl.6
 for <usrp-users@lists.ettus.com>; Thu, 31 Oct 2019 11:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=VELZSw+mFwbYJjNDLP4zNSaRZMwglIEbtL62AQmXE2Q=;
 b=W6GWq3LQz/6IKO0qj+LSgUUBU+ZOdVLtT0z84X19Xw1mbF22yckdz4QVS2rOP0FQgp
 ineHrKdzU1fipvtq6togRRQ4JF6GuVPIj0xkEsjgk2tvCSRmQSAB4XgrVHlt1KfQ8Spl
 kDABncBorKqQuAO+KJaITP/4x576/9HeyAD0LCNzQCvLXSrtqER52Zx9MlrJ53wPgKva
 9Siav8OKzbO+9A6WO1zAkUglqUUCJu1WlJHU4pXv9tq7pM2bBkSIG8p0Ei3Dk0Yz/y5m
 ppoDeDtnd0f1wCrjRhWHCpHy4Q6X3N53KGUkdpO2bnXbmAGEjiYSE/BLuBjbX+RaXRLg
 zmUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=VELZSw+mFwbYJjNDLP4zNSaRZMwglIEbtL62AQmXE2Q=;
 b=FmXg6PkzpTEhSh+QQ/ksWNXSkDLvAL9n6bX7K5o0ekiP5KEXfhUgF9FoS9U0KeFcp1
 HAoce3EHKu9qy4EghP+Aa/JPep6DquoWA2ifDpnJTCcUpa/cLNM/w7NSiqMLiZkkMsVs
 eEx1+JqhB+HW06Ds8teMcmTTQC3YOJvtgS7SLES1sD63RRyqGbDbda30EHHAVwSoAtJN
 LXYmdJ8E50H3/mrFg/eydYspNspMKzhr4qp8Ovq40FAmvrqm4Igz2OY3NtZdFI9rdedI
 SGnoC3VVpvf5yKFEI+fUwpfazgNSAEZPjxW5YESCz/Q00iuzdkTVgdGTa6y7NQdneMDZ
 p8aQ==
X-Gm-Message-State: APjAAAX0yhQyC8FkuJYHx/lqR9qV4v3/gUE0xIv7jaHyH35Oygs+Qeru
 EfMPjiVEhzZrrKjZCh7k5iAA9FA60/5k9hnh7AmZDZGz
X-Google-Smtp-Source: APXvYqzkQ1fmnMrMYpWoPXdCmJiC7INDaniSzlCYvFggJdHfXNFPGZ8nDFx7O2niVEAds8czBCPydhPYaqHb9H9aF18=
X-Received: by 2002:a05:6830:1f51:: with SMTP id
 u17mr5772967oth.318.1572545019673; 
 Thu, 31 Oct 2019 11:03:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAFG_7kdRki3HVcyVTi=k63=A01Y6RVqBRU_9it6PYb=JkPUBww@mail.gmail.com>
 <CANf970ZdC4X48iAYtBQ7Y-3a2ywQA-5QMOyeeL2Gaytw7nSsFw@mail.gmail.com>
 <CAFG_7kf0QNdCta=j0W7M1T8_GMh7-HFtaYPtUoGgVhgAaEuHjw@mail.gmail.com>
In-Reply-To: <CAFG_7kf0QNdCta=j0W7M1T8_GMh7-HFtaYPtUoGgVhgAaEuHjw@mail.gmail.com>
Date: Thu, 31 Oct 2019 19:03:28 +0100
Message-ID: <CAFG_7kePEpRzYHmeM3VV2X7wsJsd1+m_voYAbwLw_T2EpygNbw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Fwd: [usrp-users] E320 Multi TX Stream Operation in GR
 3.8 stops during configuration of the USRP sink
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
From: Alexander W via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alexander W <alexander.e.wagner@gmail.com>
Content-Type: multipart/mixed; boundary="===============8229201245260764939=="
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

--===============8229201245260764939==
Content-Type: multipart/alternative; boundary="0000000000004a82ef059638ab8c"

--0000000000004a82ef059638ab8c
Content-Type: text/plain; charset="UTF-8"

Hey,

I managed to find a solution. So it really was a bug in GNU Radio 3.8. This
issue proposes a workaround by clearing the stream channels variable in the
uhd block (https://github.com/gnuradio/gnuradio/issues/2789). There is also
an approved PR with a bugfix (https://github.com/gnuradio/gnuradio/pull/2823).
Thus, it should be merged soon.

Alex

---------- Forwarded message ---------
Von: Alexander W <alexander.e.wagner@gmail.com>
Date: Di., 29. Okt. 2019 um 14:33 Uhr
Subject: Re: [USRP-users] [usrp-users] E320 Multi TX Stream Operation in GR
3.8 stops during configuration of the USRP sink
To: Sam Reiter <sam.reiter@ettus.com>


Hi Sam,
I tested it with GNU Radio 3.7 and that worked (GNU Radio Companion
3.7.13.5, UHD 3.14.1.1-0-g0347a6d8). So it seems to be an issue with 3.8. I
ran a minimum python script with GNU Radio 3.8 to get more information
about the fault.


Python3 script:

from gnuradio import uhd

sink=uhd.usrp_sink(",".join(('addr=192.168.10.2',
"")),uhd.stream_args(cpu_format="fc32",args=",channels=[],),",))
sink.set_subdev_spec('A:0 A:1', 0)
sink.set_center_freq(2e9, 0)
sink.set_normalized_gain(0.5, 0)
sink.set_antenna('TX/RX', 0)
sink.set_center_freq(2e9, 1)


Output with gdb:

Thread 1 "python3" received signal SIGSEGV, Segmentation fault.
std::__cxx11::list<std::pair<std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> >,
std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> > >,
std::allocator<std::pair<std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> >,
std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> > > >
>::_M_assign_dispatch<std::_List_const_iterator<std::pair<std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> >,
std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> > > > > (__last2=
  {first = <error reading variable: Cannot create a lazy string with
address 0x0, and a non-zero length.>, second = "\001\000"}, __first2=
  {first = <error reading variable: Cannot create a lazy string with
address 0x0, and a non-zero length.>, second = "\001\000"}, this=0xc1f418)
at /usr/include/c++/7/bits/list.tcc:317
317          erase(__first1, __last1);


(gdb) backtrace

#0  std::__cxx11::list<std::pair<std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> >,
std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> > >,
std::allocator<std::pair<std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> >,
std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> > > >
>::_M_assign_dispatch<std::_List_const_iterator<std::pair<std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> >,
std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> > > > > (__last2=
  {first = <error reading variable: Cannot create a lazy string with
address 0x0, and a non-zero length.>, second = "\001\000"}, __first2=
  {first = <error reading variable: Cannot create a lazy string with
address 0x0, and a non-zero length.>, second = "\001\000"}, this=0xc1f418)
at /usr/include/c++/7/bits/list.tcc:317
#1  std::__cxx11::list<std::pair<std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> >,
std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> > >,
std::allocator<std::pair<std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> >,
std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> > > > >::operator= (
    __x=empty std::__cxx11::list, this=0xc1f418) at
/usr/include/c++/7/bits/list.tcc:285
#2  uhd::dict<std::__cxx11::basic_string<char, std::char_traits<char>,
std::allocator<char> >, std::__cxx11::basic_string<char,
std::char_traits<char>, std::allocator<char> > >::operator=
(this=<optimized out>)
    at /home/user/pybombs_gnuradio/include/uhd/types/dict.hpp:20
#3  uhd::device_addr_t::operator= (this=<optimized out>) at
/home/user/pybombs_gnuradio/include/uhd/types/device_addr.hpp:38
#4  uhd::tune_request_t::operator= (this=<optimized out>) at
/home/user/pybombs_gnuradio/include/uhd/types/tune_request.hpp:25
#5  gr::uhd::usrp_sink_impl::set_center_freq (this=0xb4c370,
tune_request=..., chan=1) at
/home/user/pybombs_gnuradio/src/gnuradio/gr-uhd/lib/usrp_sink_impl.cc:99
#6  0x00007ffff5cf1ff0 in gr::uhd::usrp_block::set_center_freq (chan=1,
freq=<optimized out>, this=0xb4c510) at
/home/user/pybombs_gnuradio/src/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_block.h:134
#7  _wrap_usrp_sink_sptr_set_center_freq__SWIG_1
(args=args@entry=0x7ffff6161900)
at
/home/user/pybombs_gnuradio/src/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx:42327
#8  0x00007ffff5cf9536 in _wrap_usrp_sink_sptr_set_center_freq
(self=<optimized out>, args=0x7ffff6161900)
    at
/home/user/pybombs_gnuradio/src/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx:42397


Thanks for your help!
Alex


Am Do., 24. Okt. 2019 um 20:19 Uhr schrieb Sam Reiter <sam.reiter@ettus.com
>:

> Alex,
>
> I suspect this is something specific to GNU Radio 3.8, but it's not
> something I've seen up to this point. To help narrow down the problem,
> could you run your test flowchart on GNU Radio 3.7 and report back the
> results?
>
> Sam
>
> On Tue, Oct 22, 2019 at 8:11 AM Alexander W via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hey,
>>
>> I am currently setting up an E320 and want to use both TX Chains
>> simultaneously. I first did the benchmark_rate test:
>>
>> $ ~/pybombs_gnuradio/lib/uhd/examples/benchmark_rate    --args
>> "addr=192.168.10.2"    --duration 60    --channels "0,1"    --rx_rate 1e6
>>  --rx_subdev "A:0 A:1"
>>
>> This ran fine and I moved over to gnuradio. The test flowchart consists
>> of two sine signal sources as input for one sink block. Arguments in the
>> USRP sink block are set to the following:
>>
>> - Device Address: addr=192.168.10.2
>> - Mb0: SubDev Spec: A:0 A:1
>> - Num Channels: 2
>>
>> Rest of the arguments are the default values. Starting the flowchart
>> returns:
>> ...
>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>> [INFO] [0/Radio_0] CODEC loopback test passed
>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>> [INFO] [0/Radio_0] CODEC loopback test passed
>>
>> >>> Done (return code -11)
>>
>> I tried to see where this comes from. The segfault is triggered after a
>> call to set the center frequency of the second channel:
>> ...
>>         self.uhd_usrp_sink_0 = uhd.usrp_sink(
>>             ",".join(('addr=192.168.10.2', "")),
>>             uhd.stream_args(
>>                 cpu_format="fc32",
>>                 args='',
>>                 channels=[],
>>             ),
>>             '',
>>         )
>>         self.uhd_usrp_sink_0.set_subdev_spec('A:0 A:1', 0)
>>         self.uhd_usrp_sink_0.set_center_freq(freq, 0)
>>         self.uhd_usrp_sink_0.set_normalized_gain(0.5, 0)
>>         print("91")
>>         self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
>>         print("93")
>>         self.uhd_usrp_sink_0.set_center_freq(freq, 1)
>> <-- Segfault appears in this call
>>         print("95")
>>         self.uhd_usrp_sink_0.set_normalized_gain(0.5, 1)
>>         print("97")
>>         self.uhd_usrp_sink_0.set_antenna('TX/RX', 1)
>>         self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
>> ...
>>
>> Used UHD Version: UHD 3.14.1.1-0-g0347a6d8
>> Used GR Version: 3.8.0.0
>>
>> Did anyone run into the same issue? As the error code is during the
>> config call I am not sure if this connected to a wrong config or something
>> else.
>>
>> Thanks in advance. Regards,
>> Alex
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000004a82ef059638ab8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey,</div><div><br></div><div>I managed to find a sol=
ution. So it really was a bug in GNU Radio 3.8. This issue proposes a worka=
round by clearing the stream channels variable in the uhd block (<a href=3D=
"https://github.com/gnuradio/gnuradio/issues/2789">https://github.com/gnura=
dio/gnuradio/issues/2789</a>). There is also an approved PR with a bugfix (=
<a href=3D"https://github.com/gnuradio/gnuradio/pull/2823">https://github.c=
om/gnuradio/gnuradio/pull/2823</a>). Thus, it should be merged soon.</div><=
div><br></div><div></div><div>Alex<br></div><div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ---=
------<br>Von: <b class=3D"gmail_sendername" dir=3D"auto">Alexander W</b> <=
span dir=3D"auto">&lt;<a href=3D"mailto:alexander.e.wagner@gmail.com">alexa=
nder.e.wagner@gmail.com</a>&gt;</span><br>Date: Di., 29. Okt. 2019 um 14:33=
=C2=A0Uhr<br>Subject: Re: [USRP-users] [usrp-users] E320 Multi TX Stream Op=
eration in GR 3.8 stops during configuration of the USRP sink<br>To: Sam Re=
iter &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</a>&g=
t;<br></div><br><br><div dir=3D"ltr"><div>Hi Sam,</div><div>I tested it wit=
h GNU Radio 3.7 and that worked (GNU Radio Companion 3.7.13.5, UHD 3.14.1.1=
-0-g0347a6d8). So it seems to be an issue with 3.8. I ran a minimum python =
script with GNU Radio 3.8 to get more information about the fault.</div><di=
v><br></div><div><br></div><div>Python3 script:</div><div><br></div><div>fr=
om gnuradio import uhd<br><br>sink=3Duhd.usrp_sink(&quot;,&quot;.join((&#39=
;addr=3D192.168.10.2&#39;, &quot;&quot;)),uhd.stream_args(cpu_format=3D&quo=
t;fc32&quot;,args=3D&quot;,channels=3D[],),&quot;,))<br>sink.set_subdev_spe=
c(&#39;A:0 A:1&#39;, 0)<br>sink.set_center_freq(2e9, 0)<br>sink.set_normali=
zed_gain(0.5, 0)<br>sink.set_antenna(&#39;TX/RX&#39;, 0)<br>sink.set_center=
_freq(2e9, 1)</div><div><br></div><div><br></div><div>Output with gdb:</div=
><div><br></div><div>Thread 1 &quot;python3&quot; received signal SIGSEGV, =
Segmentation fault.<br>std::__cxx11::list&lt;std::pair&lt;std::__cxx11::bas=
ic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt;=
 &gt;, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, st=
d::allocator&lt;char&gt; &gt; &gt;, std::allocator&lt;std::pair&lt;std::__c=
xx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt=
;char&gt; &gt;, std::__cxx11::basic_string&lt;char, std::char_traits&lt;cha=
r&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; &gt;::_M_assign_dispatch&l=
t;std::_List_const_iterator&lt;std::pair&lt;std::__cxx11::basic_string&lt;c=
har, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::__=
cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&l=
t;char&gt; &gt; &gt; &gt; &gt; (__last2=3D<br>=C2=A0 {first =3D &lt;error r=
eading variable: Cannot create a lazy string with address 0x0, and a non-ze=
ro length.&gt;, second =3D &quot;\001\000&quot;}, __first2=3D<br>=C2=A0 {fi=
rst =3D &lt;error reading variable: Cannot create a lazy string with addres=
s 0x0, and a non-zero length.&gt;, second =3D &quot;\001\000&quot;}, this=
=3D0xc1f418) at /usr/include/c++/7/bits/list.tcc:317<br>317	 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0erase(__first1, __last1);</div><div><br></div><div><br>=
</div><div>(gdb) backtrace</div><div><br></div><div>#0 =C2=A0std::__cxx11::=
list&lt;std::pair&lt;std::__cxx11::basic_string&lt;char, std::char_traits&l=
t;char&gt;, std::allocator&lt;char&gt; &gt;, std::__cxx11::basic_string&lt;=
char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt;, s=
td::allocator&lt;std::pair&lt;std::__cxx11::basic_string&lt;char, std::char=
_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::__cxx11::basic_s=
tring&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt=
; &gt; &gt; &gt;::_M_assign_dispatch&lt;std::_List_const_iterator&lt;std::p=
air&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, st=
d::allocator&lt;char&gt; &gt;, std::__cxx11::basic_string&lt;char, std::cha=
r_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; &gt; (__las=
t2=3D<br>=C2=A0 {first =3D &lt;error reading variable: Cannot create a lazy=
 string with address 0x0, and a non-zero length.&gt;, second =3D &quot;\001=
\000&quot;}, __first2=3D<br>=C2=A0 {first =3D &lt;error reading variable: C=
annot create a lazy string with address 0x0, and a non-zero length.&gt;, se=
cond =3D &quot;\001\000&quot;}, this=3D0xc1f418) at /usr/include/c++/7/bits=
/list.tcc:317<br>#1 =C2=A0std::__cxx11::list&lt;std::pair&lt;std::__cxx11::=
basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&=
gt; &gt;, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;,=
 std::allocator&lt;char&gt; &gt; &gt;, std::allocator&lt;std::pair&lt;std::=
__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator=
&lt;char&gt; &gt;, std::__cxx11::basic_string&lt;char, std::char_traits&lt;=
char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; &gt;::operator=3D (<br>=
=C2=A0 =C2=A0 __x=3Dempty std::__cxx11::list, this=3D0xc1f418) at /usr/incl=
ude/c++/7/bits/list.tcc:285<br>#2 =C2=A0uhd::dict&lt;std::__cxx11::basic_st=
ring&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;=
, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::al=
locator&lt;char&gt; &gt; &gt;::operator=3D (this=3D&lt;optimized out&gt;)<b=
r>=C2=A0 =C2=A0 at /home/user/pybombs_gnuradio/include/uhd/types/dict.hpp:2=
0<br>#3 =C2=A0uhd::device_addr_t::operator=3D (this=3D&lt;optimized out&gt;=
) at /home/user/pybombs_gnuradio/include/uhd/types/device_addr.hpp:38<br>#4=
 =C2=A0uhd::tune_request_t::operator=3D (this=3D&lt;optimized out&gt;) at /=
home/user/pybombs_gnuradio/include/uhd/types/tune_request.hpp:25<br>#5 =C2=
=A0gr::uhd::usrp_sink_impl::set_center_freq (this=3D0xb4c370, tune_request=
=3D..., chan=3D1) at /home/user/pybombs_gnuradio/src/gnuradio/gr-uhd/lib/us=
rp_sink_impl.cc:99<br>#6 =C2=A00x00007ffff5cf1ff0 in gr::uhd::usrp_block::s=
et_center_freq (chan=3D1, freq=3D&lt;optimized out&gt;, this=3D0xb4c510) at=
 /home/user/pybombs_gnuradio/src/gnuradio/gr-uhd/lib/../include/gnuradio/uh=
d/usrp_block.h:134<br>#7 =C2=A0_wrap_usrp_sink_sptr_set_center_freq__SWIG_1=
 (args=3Dargs@entry=3D0x7ffff6161900) at /home/user/pybombs_gnuradio/src/gn=
uradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx:42=
327<br>#8 =C2=A00x00007ffff5cf9536 in _wrap_usrp_sink_sptr_set_center_freq =
(self=3D&lt;optimized out&gt;, args=3D0x7ffff6161900)<br>=C2=A0 =C2=A0 at /=
home/user/pybombs_gnuradio/src/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_sw=
ig.dir/uhd_swigPYTHON_wrap.cxx:42397</div><div><br></div><div><br></div><di=
v>Thanks for your help!<br></div><div>Alex<br></div><div><br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Am Do., =
24. Okt. 2019 um 20:19=C2=A0Uhr schrieb Sam Reiter &lt;<a href=3D"mailto:sa=
m.reiter@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt;:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>A=
lex,</div><div><br></div><div>I suspect this is something specific to GNU R=
adio 3.8, but it&#39;s not something I&#39;ve seen up to this point. To hel=
p narrow down the problem, could you run your test flowchart on GNU Radio 3=
.7 and report back the results?</div><div><br></div><div><div><div dir=3D"l=
tr"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam<br></div></div></div></div><=
/div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Oct 22, 2019 at 8:11 AM Alexander W via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hey,</div><div><br></d=
iv><div>I am currently setting up an E320 and want to use both TX Chains si=
multaneously. I first did the benchmark_rate test:<br></div><div> <br></div=
><div>$ ~/pybombs_gnuradio/lib/uhd/examples/benchmark_rate
 =C2=A0 =C2=A0--args &quot;addr=3D192.168.10.2&quot; =C2=A0 =C2=A0--duratio=
n 60 =C2=A0 =C2=A0--channels &quot;0,1&quot; =C2=A0=20
=C2=A0--rx_rate 1e6 =C2=A0 =C2=A0--rx_subdev &quot;A:0 A:1&quot;</div><div>=
<br></div><div>This=20
ran fine and I moved over to gnuradio. The test flowchart consists of=20
two sine signal sources as input for one sink block. Arguments in the=20
USRP sink block are set to the following:</div><div><br></div><div>- Device=
 Address: addr=3D192.168.10.2</div><div>- Mb0: SubDev Spec: A:0 A:1</div><d=
iv>- Num Channels: 2</div><div><br></div><div>Rest of the arguments are the=
 default values. Starting the flowchart returns: <br></div><div>...<br></di=
v><div> [INFO] [0/Radio_0] Performing CODEC loopback test... <br>[INFO] [0/=
Radio_0] CODEC loopback test passed<br>[INFO] [0/Radio_0] Performing CODEC =
loopback test... <br>[INFO] [0/Radio_0] CODEC loopback test passed<br><br>&=
gt;&gt;&gt; Done (return code -11)</div><div><br></div><div>I tried to see =
where this comes from. The segfault is triggered after a call to set the ce=
nter frequency of the second channel:</div><div>...</div><div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;,&quot;.join((&#39;addr=3D1=
92.168.10.2&#39;, &quot;&quot;)),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 uhd.stream_args(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 cpu_format=3D&quot;fc32&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 args=3D&#39;&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D[],<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sel=
f.uhd_usrp_sink_0.set_subdev_spec(&#39;A:0 A:1&#39;, 0)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(freq, 0)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_normalized_gain(0.5, 0)<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;91&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/RX&#39;, 0)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 print(&quot;93&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd=
_usrp_sink_0.set_center_freq(freq, 1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 &lt;-- Segfault appears in this call<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pri=
nt(&quot;95&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_=
normalized_gain(0.5, 1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;97&quot;=
)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/R=
X&#39;, 1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rat=
e(samp_rate)</div><div>...<br></div><div>=C2=A0<br></div><div>Used UHD Vers=
ion: UHD 3.14.1.1-0-g0347a6d8</div><div>Used GR Version: 3.8.0.0</div><div>=
<br></div><div>Did
 anyone run into the same issue? As the error code is during the config=20
call I am not sure if this connected to a wrong config or something=20
else. <br></div><div><br></div><div>Thanks in advance. Regards,</div><div>A=
lex</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</div></div></div>

--0000000000004a82ef059638ab8c--


--===============8229201245260764939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8229201245260764939==--

