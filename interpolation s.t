from collections import Counter
text = "I love NLP I love Python"
words = text.split()
bigrams = list(zip(words[:-1], words[1:]))
bigram_count = Counter(bigrams)
unigram_count = Counter(words)
total_words = len(words)
w1 = "love"
w2 = "NLP"
lambda1 = 0.7
lambda2 = 0.3
p_bigram = bigram_count[(w1, w2)] / unigram_count[w1]
p_unigram = unigram_count[w2] / total_words
probability = (lambda1 * p_bigram) + (lambda2 * p_unigram)
print("Interpolation Probability:", probability)
